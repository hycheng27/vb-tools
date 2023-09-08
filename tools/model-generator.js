import {
  snakeToPascalCase,
  snakeToCamelCase,
  writeTabs,
  writeTabsForArray,
  copyToClipboard,
} from '../helper/code-help.js';
import { convertDbToVbType } from '../helper/vb-type-convert.js';
import { showSnackbar } from '../helper/snackbar.js';

function onConvertToModel() {
  // get the input from textarea with id = convertor-input
  var input = $('#convertor-input').val();

  // --- convert the input to model

  // loop through each line
  if (input == null || input == '') {
    alert('Please paste the SQL script in the input box.');
    return;
  }
  var lines = input.split('\n');
  var i = 0;
  while (!lines[i].includes('CREATE TABLE')) {
    i++;

    if (lines[i] == null) {
      $('#convertor-output').val('Cannot find CREATE TABLE statement.');
      return;
    }
  }
  console.log(`found on line ${i}: ${lines[i]}`);
  var tableNameLine = lines[i];

  // get the index of the second '[', then get the table name with substring.
  var j = tableNameLine.indexOf('[', tableNameLine.indexOf('[') + 1);
  var tableName = tableNameLine.substring(j + 1, tableNameLine.length - 2);
  console.log(`table name: ${tableName}`);

  // loop the table columns
  i += 1;
  var columns = [];

  var endingKeywords = ['CONSTRAINT', 'PRIMARY KEY', 'FOREIGN KEY', 'UNIQUE', 'CHECK', 'DEFAULT', 'END'];
  while (!endingKeywords.some((keyword) => lines[i].includes(keyword))) {
    var line = lines[i];
    // console.log(`processing line ${i}: ${line}`);

    // Expected structure: [column name] [column type] [NULL|NOT NULL] [DEFAULT|NULL]],
    var splitted = line.split(' ');
    console.log(`splitted: ${splitted}`);
    var columnName = splitted[0].substring(splitted[0].indexOf('[') + 1, splitted[0].indexOf(']'));
    var columnType = splitted[1].substring(splitted[1].indexOf('[') + 1, splitted[1].indexOf(']'));
    var columnNullable = splitted[2].includes('NULL') ? true : false;

    columns.push({
      name: columnName,
      type: columnType,
      isNullable: columnNullable,
    });

    i++;

    if (lines[i] == null) {
      $('#convertor-output').val('Cannot find CONSTRAINT statement after columns.');
      return;
    }
  }
  console.log(`found last column line ${i - 1}: ${lines[i - 1]}`);

  var convertedColumns = columns.map((col) => ({ ...col, type: convertDbToVbType(col.type) ?? '(Unsupported Type)' }));
  console.log('convertedColumns:', convertedColumns);

  // --- generate the output
  var result = [
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

  // set the output to textarea with id = convertor-output
  $('#convertor-output').val(result);
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
  var vbTableName = `Public Const tableName As String = "${tableName}"`;

  // map convertedColumns to VB properties
  var vbColDefs = _convertedColumns.map((col) => {
    var type = col.type;
    var name = col.name;
    var nullableStr = '';
    if (col.isNullable) {
      if (type === 'String' || type === 'Object') {
        nullableStr = ' = Nothing';
      } else {
        nullableStr = '?';
      }
    }
    return `Public ${snakeToPascalCase(name)} As ${type}${nullableStr}`;
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
  var constructorParams = _convertedColumns.map((col) => {
    if (col.isNullable) {
      if (col.type === 'String' || col.type === 'Object') {
        return `Optional ${snakeToCamelCase(col.name)} As ${col.type} = Nothing,`;
      } else {
        return `Optional ${snakeToCamelCase(col.name)} As ${col.type}? = Nothing,`;
      }
    } else {
      return `${snakeToCamelCase(col.name)} As ${col.type},`;
    }
  });

  // remove the extra comma at the end
  constructorParams[constructorParams.length - 1] = constructorParams[constructorParams.length - 1].replace(',', '');

  // add initializers in the constructor
  var constructorInitializers = _convertedColumns.map((col) => {
    return `Me.${snakeToPascalCase(col.name)} = ${snakeToPascalCase(col.name)}`;
  });

  // add constructor body
  var classConstructor = [
    `Public Sub New(`,
    ...writeTabsForArray(constructorParams),
    ')',
    ...writeTabsForArray(constructorInitializers),
    `End Sub`,
  ];

  // shared dictionary for column names
  var sharedDictionary = [
    `Public Shared ReadOnly GetName As New Dictionary(Of Enum${snakeToPascalCase(tableName)}Columns, String) From {`,
    ...convertedColumns.map(
      (col) =>
        writeTabs() + `{Enum${snakeToPascalCase(tableName)}Columns.${snakeToPascalCase(col.name)}, "${col.name}"},`
    ),
    `}`,
  ];
  // remove the last comma
  let dictLen = sharedDictionary.length;
  let itemLen = sharedDictionary[dictLen - 2].length;
  sharedDictionary[dictLen - 2] = sharedDictionary[dictLen - 2].substring(0, itemLen - 1);

  // shared function: get column names
  var sharedFunctionGetColNames = [
    `''' <summary>`,
    `''' Receives an array of <see cref="Enum${snakeToPascalCase(
      tableName
    )}Columns"/> and returns a comma separated string for SQL query columns selection.`,
    `''' </summary>`,
    `''' <param name="cols"></param>`,
    `''' <returns>a comma separated string, e.g. "id, tender_id, created_by"</returns>`,
    `Public Shared Function GetCommaSeparatedColNames(cols As Enum${snakeToPascalCase(tableName)}Columns()) As String`,
    `    Dim _list = New List(Of String)`,
    `    For Each col In cols`,
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

function shouldAddNullable(col) {
  return col.isNullable && col.type !== 'String' && col.type !== 'Object';
}

// Return the VB res class
function getVbResClassStrArr(tableName, convertedColumns) {
  // map convertedColumns to VB properties
  var vbColDefs = convertedColumns.map((col) => {
    var type = col.type;
    var name = col.name;
    var nullableStr = ''; // in the res model, every property is nullable
    if (type === 'String' || type === 'Object') {
      nullableStr = ' = Nothing';
    } else {
      nullableStr = '?';
    }
    return `Public ${snakeToPascalCase(name)} As ${type}${nullableStr}`;
  });

  // add method: FillModel
  var propertyInitializers = convertedColumns.map((col) => {
    // Example: TenderId = dataRow.Field(Of Integer?)("tender_id")
    return `Me.${snakeToPascalCase(col.name)} = dataRow.Field(Of ${col.type}${shouldAddNullable(col) ? '?' : ''})("${
      col.name
    }")`;
  });

  // add constructor body (dataRow)
  var fillModelMethod = [
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
    ...convertedColumns.map((col) => writeTabs() + `${snakeToPascalCase(col.name)}`),
    `End Enum`,
  ];

  return [...comment, ...enumStrArr];
}

/// End of Helper functions ///

/// Add event listeners ///

// convert model
$('#convertor-button').click(onConvertToModel);

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

/// End of Add event listeners ///
