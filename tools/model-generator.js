import {
  snakeToPascalCase,
  writeTabs,
  writeTabsForArray,
  copyToClipboard,
  createModelFileForDownload,
  saveAsFileAndDownload,
} from '../helper/code-help.js';
import { convertDbToVbType, toVbPropertyName, toVbParamName } from '../helper/vb-type-convert.js';
import { showSnackbar } from '../helper/snackbar.js';

/**
 * Convert the SQL script to VB model.
 * @param {string} inputStr the sql script output from ssms server, to be converted into vb model
 * @returns {[boolean, {tableName: string, vbModel: string, error: string}]} is success, the result object.
 */
function onConvertToModel(inputStr) {
  // --- convert the input to model

  // loop through each line
  if (inputStr == null || inputStr == '') {
    return [false, { tableName: '', vbModel: '', error: 'No SQL Script found.' }];
  }
  let lines = inputStr.split('\n');
  let i = 0;
  while (!lines[i].includes('CREATE TABLE')) {
    i++;

    if (lines[i] == null) {
      return [false, { tableName: '', vbModel: '', error: 'Cannot find CREATE TABLE statement.' }];
    }
  }
  // console.log(`found on line ${i}: ${lines[i]}`);
  let tableNameLine = lines[i];
  console.debug('🚀 ~ tableNameLine:', tableNameLine);

  // get the index of the second '[', then get the table name with substring.
  let nameStart = tableNameLine.indexOf('[', tableNameLine.indexOf('[') + 1) + 1;
  let nameEnd = tableNameLine.indexOf(']', nameStart);
  let tableName = tableNameLine.substring(nameStart, nameEnd);

  // loop the table columns
  i += 1;
  let columns = [];

  // Expected structure: [column name] [column type] [NULL|NOT NULL] [DEFAULT|NULL]],
  let pattern = /\[\w*\] \[\w*\].*(NULL|NOT NULL)/;
  while (RegExp(pattern).test(lines[i])) {
    let line = lines[i];
    // console.log(`processing line ${i}: ${line}`);

    // split the string according to the expected structure
    let splitted = line.trim().split(' ');
    // console.log(`splitted: ${splitted}`);
    let columnName = splitted[0].substring(splitted[0].indexOf('[') + 1, splitted[0].indexOf(']'));
    let columnType = splitted[1].substring(splitted[1].indexOf('[') + 1, splitted[1].indexOf(']'));
    let columnNullable = splitted[2].includes('NULL') ? true : false;

    columns.push({
      name: columnName,
      type: columnType,
      isNullable: columnNullable,
    });

    i++;

    if (lines[i] == null) {
      break;
    }
  }
  // console.log(`found last column line ${i - 1}: ${lines[i - 1]}`);

  let convertedColumns = columns.map((col) => ({ ...col, type: convertDbToVbType(col.type) ?? '(Unsupported Type)' }));
  // console.log('convertedColumns:', convertedColumns);

  // --- generate the output
  let vbModel = [
    'Imports System.Data',
    'Imports ETS.CodeUtils',
    'Imports NsInterfaces',
    '',
    ...getVbNamespaceStrArr(
      tableName,
      getVbClassStrArr(tableName, convertedColumns),
      getVbResClassStrArr(tableName, convertedColumns),
      getVbEnumClass(tableName, convertedColumns)
    ),
  ].join('\n');

  return [true, { tableName, vbModel, error: '' }];
}

function onUploadModelFile() {
  // get the file input from input with id = model-file
  let file = $('#model-file').prop('files')[0];

  // alert if no file
  if (file == null) {
    alert('Please select a file.');
    return;
  }

  // Setup the file reader
  let reader = new FileReader();

  reader.onload = function (e) {
    let lines = e.target.result;

    // separate with 'CREATE TABLE' as delimiter
    let tableSqls = lines.split('CREATE TABLE');
    if (tableSqls.length <= 1) {
      $('#convertor-output').val(`File error: No SQL Script found.`);
      return;
    }
    if (tableSqls.length > 10) {
      if (
        !confirm(
          `Discovered ${tableSqls.length - 1} tables in the sql. Are you sure you want to generate ${
            tableSqls.length - 1
          } files?`
        )
      ) {
        return;
      }
    }

    // clear the output once
    $('#convertor-output').val('');

    let vbModelResults = [];
    for (let i = 1; i < tableSqls.length; i++) {
      tableSqls[i] = 'CREATE TABLE' + tableSqls[i];
      let [isSuccess, result] = onConvertToModel(tableSqls[i]);

      if (isSuccess) {
        vbModelResults.push(result);
      } else {
        addToConvertorOutput(`File error: at table ${i} (${result.tableName}):\n${result.error}`);
      }
    }
    // generate and download successful files
    function downloadModelFilesWithDelay(vbModelResults) {
      let i = 0;
      const batchSize = 10; // limited by chrome
      const waitTime = 1000; // limited by chrome

      function downloadNextFile() {
        if (i < vbModelResults.length) {
          let result = vbModelResults[i];
          createModelFileForDownload(result.vbModel, snakeToPascalCase(result.tableName));
          addToConvertorOutput(`(${i + 1}) File ${snakeToPascalCase(result.tableName)}.vb is generated.`);
          i++;

          if (i % batchSize === 0) {
            addToConvertorOutput(`-- Batch ${i / batchSize} is done. --`);
            setTimeout(downloadNextFile, waitTime);
          } else {
            downloadNextFile();
          }
        } else {
          addToConvertorOutput(`A total of ${vbModelResults.length} files are generated.`);

          // generate a log file (txt)
          let dateStr = new Date().toLocaleString('zh-HK', { hour12: false });
          let fileDateStr = dateStr.replace(/( |,|:|\/)/g, '-');
          saveAsFileAndDownload(
            dateStr + '\n\n' + $('#convertor-output').val(),
            fileDateStr + '-model-generation-log.txt'
          );
        }
      }

      downloadNextFile();
    }
    downloadModelFilesWithDelay(vbModelResults);
  };

  reader.onerror = function (e) {
    console.error(`🚨 ~ FileReader error:`, e);
  };

  // Read the file
  reader.readAsText(file);
}

/// Helper functions ///

// Return the VB namespace string
function getVbNamespaceStrArr(tableName, vbClassStrArr, vbResClassStrArr, vbEnumClassStrArr) {
  return [
    `Namespace Ns${snakeToPascalCase(tableName)}Model`,
    ...writeTabsForArray(vbClassStrArr),
    '',
    ...writeTabsForArray(vbResClassStrArr),
    '',
    ...writeTabsForArray(vbEnumClassStrArr),
    `End Namespace`,
  ];
}

// Return the VB class
function getVbClassStrArr(tableName, convertedColumns) {
  // filter out column: Id
  let _convertedColumns = convertedColumns.filter((col) => col.name !== 'id');

  // constant: table name
  let vbTableName = `Public Const tableName As String = "${tableName}"`;

  // map convertedColumns to VB properties
  let vbColDefs = _convertedColumns.map((col) => {
    let type = col.type;
    let name = col.name;
    let nullableStr = '';
    if (col.isNullable) {
      if (type === 'String' || type === 'Object') {
        nullableStr = ' = Nothing';
      } else {
        nullableStr = '?';
      }
    }
    return `Public ${toVbPropertyName(name)} As ${type}${nullableStr}`;
  });

  // -- add constructor

  // sort the parameters, so that the nullable parameters are at the end
  _convertedColumns.sort((a, b) => {
    if (a.isNullable && !b.isNullable) {
      return 1;
    } else if (!a.isNullable && b.isNullable) {
      return -1;
    } else {
      return 0;
    }
  });
  // turn into string array
  let constructorParams = _convertedColumns.map((col) => {
    if (col.isNullable) {
      if (col.type === 'String' || col.type === 'Object') {
        return `Optional ${toVbParamName(col.name)} As ${col.type} = Nothing,`;
      } else {
        return `Optional ${toVbParamName(col.name)} As ${col.type}? = Nothing,`;
      }
    } else {
      return `${toVbParamName(col.name)} As ${col.type},`;
    }
  });

  // remove the extra comma at the end
  constructorParams[constructorParams.length - 1] = constructorParams[constructorParams.length - 1].replace(',', '');

  // add initializers in the constructor
  let constructorInitializers = _convertedColumns.map((col) => {
    return `Me.${toVbPropertyName(col.name)} = ${toVbParamName(col.name)}`;
  });

  // add constructor body
  let classConstructor = [
    `Public Sub New(`,
    ...writeTabsForArray(constructorParams),
    ')',
    ...writeTabsForArray(constructorInitializers),
    `End Sub`,
  ];

  // shared dictionary for column names
  let sharedDictionary = [
    `Public Shared ReadOnly GetName As New Dictionary(Of Enum${snakeToPascalCase(tableName)}Columns, String) From {`,
    ...convertedColumns.map(
      (col) =>
        writeTabs() + `{Enum${snakeToPascalCase(tableName)}Columns.${toVbPropertyName(col.name)}, "${col.name}"},`
    ),
    `}`,
  ];
  // remove the last comma
  let dictLen = sharedDictionary.length;
  let itemLen = sharedDictionary[dictLen - 2].length;
  sharedDictionary[dictLen - 2] = sharedDictionary[dictLen - 2].substring(0, itemLen - 1);

  // shared function: get column names
  let sharedFunctionGetColNames = [
    `''' <summary>`,
    `''' Receives an array of <see cref="Enum${snakeToPascalCase(
      tableName
    )}Columns"/> and returns a comma separated string for SQL query columns selection.`,
    `''' </summary>`,
    `''' <param name="cols"></param>`,
    `''' <returns>a comma separated string, e.g. "id, tender_id, created_by"</returns>`,
    `Public Shared Function GetCommaSeparatedColNames(cols As Enum${snakeToPascalCase(tableName)}Columns()) As String`,
    `    Dim _list = New List(Of String)`,
    `    For Each col As Enum${snakeToPascalCase(tableName)}Columns In cols`,
    `        _list.Add(GetName(col))`,
    `    Next`,
    `    Dim colNames = String.Join(", ", _list.ToArray())`,
    `    Return colNames`,
    `End Function`,
  ];

  return [
    `Public Class ${snakeToPascalCase(tableName)}Model`,
    writeTabs() + vbTableName,
    '',
    ...writeTabsForArray(vbColDefs),
    '',
    ...writeTabsForArray(classConstructor),
    '',
    ...writeTabsForArray(sharedDictionary),
    '',
    ...writeTabsForArray(sharedFunctionGetColNames),
    `End Class`,
  ];
}

// Return the VB res class
function getVbResClassStrArr(tableName, convertedColumns) {
  // map convertedColumns to VB properties
  let vbColDefs = convertedColumns.map((col) => {
    let type = col.type;
    let name = col.name;
    let nullableStr = ''; // in the res model, every property is nullable
    if (type === 'String' || type === 'Object') {
      nullableStr = ' = Nothing';
    } else {
      nullableStr = '?';
    }
    return `Public ${toVbPropertyName(name)} As ${type}${nullableStr}`;
  });

  // add method: FillModel
  let propertyInitializers = convertedColumns.map((col) => {
    // Example: TenderId = dataRow.Field(Of Integer?)("tender_id")
    return `Me.${toVbPropertyName(col.name)} = dataRow.Field(Of ${col.type}${
      col.type === 'String' || col.type === 'Object' ? '' : '?'
    })("${col.name}")`;
  });

  // add constructor body (dataRow)
  let fillModelMethod = [
    `Public Sub FillModel(dataRow As DataRow) Implements IDataRowFillable.FillModel`,
    ...writeTabsForArray(propertyInitializers),
    `End Sub`,
  ];

  return [
    `''' <summary>`,
    `''' Every field from <see cref="${snakeToPascalCase(tableName)}Model"/> except all of them are optional.<br/>`,
    `''' Useful for receiving data from DB when not all fields are selected.`,
    `''' </summary>`,
    `Public Class Res${snakeToPascalCase(tableName)}Model`,
    writeTabs() + `Implements IDataRowFillable`,
    '',
    ...writeTabsForArray(vbColDefs),
    '',
    ...writeTabsForArray(fillModelMethod),
    `End Class`,
  ];
}

function getVbEnumClass(tableName, convertedColumns) {
  let comment = [
    `''' <summary>`,
    `''' Abstracted column names with enums. The indexes are not important.`,
    `''' </summary>`,
  ];

  let enumStrArr = [
    `Public Enum Enum${snakeToPascalCase(tableName)}Columns`,
    ...convertedColumns.map((col) => writeTabs() + `${toVbPropertyName(col.name)}`),
    `End Enum`,
  ];

  return [...comment, ...enumStrArr];
}

function addToConvertorOutput(str) {
  let existingOutput = $('#convertor-output').val();
  if (existingOutput.length > 0) {
    existingOutput += '\n';
  }
  $('#convertor-output').val(`${existingOutput}${str}`);
}

/// End of Helper functions ///

/// Add event listeners ///

// convert model
$('#convertor-button').click(() => {
  let input = $('#convertor-input').val();
  let [isSuccess, result] = onConvertToModel(input);
  if (isSuccess) {
    $('#convertor-output').val(result.vbModel);
  } else {
    $('#convertor-output').val(result.error);
  }
});

// copy and clear
$('#clear-input-btn').click(() => {
  $('#convertor-input').val('');
});
$('#copy-input-btn').click(() => {
  copyToClipboard($('#convertor-input').val());
  showSnackbar('Copied input to clipboard.');
});
$('#clear-output-btn').click(() => {
  $('#convertor-output').val('');
});
$('#copy-output-btn').click(() => {
  copyToClipboard($('#convertor-output').val());
  showSnackbar('Copied output to clipboard.');
});

// upload model file
$('#model-file-upload').click(onUploadModelFile);

/// End of Add event listeners ///
