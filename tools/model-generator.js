import { snakeToPascalCase, snakeToCamelCase } from '../helper/code-help.js';

function onConvertToModel() {
  // get the input from textarea with id = convertor-input
  var input = document.getElementById('convertor-input').value;

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

  var convertedColumns = columns.map((col) => ({ ...col, type: convertType(col.type) ?? '(Unsupported Type)' }));
  console.log('convertedColumns:', convertedColumns);

  // --- generate the output
  var result = [
    'Imports System.Data',
    'Imports ETS.CodeUtils',
    '',
    ...getVbNamespaceStrArr(
      tableName,
      getVbClassStrArr(tableName, convertedColumns),
      getVbResClassStrArr(tableName, convertedColumns)
    ),
  ].join('\n');

  // set the output to textarea with id = convertor-output
  $('#convertor-output').val(result);
}

// add event listener to button with id = convertor-copy-button
$('#convertor-button').click(onConvertToModel);

// Return the VB namespace string
function getVbNamespaceStrArr(tableName, vbClassStrArr, vbResClassStrArr) {
  return [
    `Namespace Ns${snakeToPascalCase(tableName)}Model`,
    ...writeTabsForArray(vbClassStrArr),
    '',
    ...writeTabsForArray(vbResClassStrArr),
    `End Namespace`,
  ];
}

// Return the VB class
function getVbClassStrArr(tableName, convertedColumns) {
  // filter out column: Id
  convertedColumns = convertedColumns.filter((col) => col.name !== 'id');

  // constant: table name
  var vbTableName = `Public Const tableName As String = "${tableName}"`;

  // map convertedColumns to VB properties
  var vbColDefs = convertedColumns.map((col) => {
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

  // add constructor
  var constructorParams = convertedColumns.map((col) => {
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
  var constructorInitializers = convertedColumns.map((col) => {
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

  return [
    `Public Class ${snakeToPascalCase(tableName)}Model`,
    writeTabs() + vbTableName,
    ...writeTabsForArray(vbColDefs),
    ...writeTabsForArray(classConstructor),
    `End Class`,
  ];
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

  // add constructor
  // add initializers in the constructor
  var constructorInitializers = convertedColumns
    .map((col) => {
      return [
        `If cols.Contains("${col.name}") Then`,
        `  ${snakeToPascalCase(col.name)} = IsNull(row("${col.name}"), Nothing)`,
        `End If`,
      ];
    })
    .flat();

  // add constructor body (dataRow)
  var classConstructor = [
    `Public Sub New(row As DataRow)`,
    writeTabs() + `Dim cols = row.Table.Columns`,
    '',
    ...writeTabsForArray(constructorInitializers),
    `End Sub`,
  ];

  return [
    `''' <summary>`,
    `''' Every field from <see cref="${snakeToPascalCase(tableName)}"/> except all of them are optional.<br/>`,
    `''' Useful for receiving data from DB when not all fields are selected.`,
    `''' </summary>`,
    `Public Class Res${snakeToPascalCase(tableName)}Model`,
    ...writeTabsForArray(vbColDefs),
    ...writeTabsForArray(classConstructor),
    `End Class`,
  ];
}

function convertType(type) {
  /**
   * Conversion Table
   *
   * bigint, Int64
   * binary, Byte[]
   * bit, Boolean
   * char, None
   * cursor, None
   * date, DateTime
   * datetime, DateTime
   * datetime2, DateTime
   * DATETIMEOFFSET, DateTimeOffset
   * decimal, Decimal
   * float, Double
   * geography, None
   * hierarchyid, None
   * image, None
   * int, Integer
   * money, Decimal
   * nchar, String
   * ntext, None
   * numeric, Decimal
   * nvarchar, String
   * nvarchar(1), String
   * real, Single
   * rowversion, Byte[]
   * smallint, Short
   * smallmoney, Decimal
   * sql_variant, Object
   * table, None
   * text, None
   * time, TimeSpan
   * timestamp, None
   * tinyint, Byte
   * uniqueidentifier, Guid
   * User-defined type(UDT), None
   * varbinary, Byte[]
   * varbinary(1), Byte[]
   * varchar, None
   * xml, None
   */
  switch (type) {
    case 'bigint':
      return 'Int64';

    case 'binary':
      return 'Byte[]';

    case 'bit':
      return 'Boolean';

    case 'char':
      return null;

    case 'cursor':
      return null;

    case 'date':
      return 'Date';

    case 'datetime':
      return 'Date';

    case 'datetime2':
      return 'Date';

    case 'DATETIMEOFFSET':
      return 'DateTimeOffset';

    case 'decimal':
      return 'Decimal';

    case 'float':
      return 'Double';

    case 'geography':
      return null;

    case 'hierarchyid':
      return null;

    case 'image':
      return null;

    case 'int':
      return 'Integer';

    case 'money':
      return 'Decimal';

    case 'nchar':
      return 'String';

    case 'ntext':
      return null;

    case 'numeric':
      return 'Decimal';

    case 'nvarchar':
      return 'String';

    case 'nvarchar':
      return 'String';

    case 'real':
      return 'Single';

    case 'rowversion':
      return 'Byte[]';

    case 'smallint':
      return 'Short';

    case 'smallmoney':
      return 'Decimal';

    case 'sql_variant':
      return 'Object';

    case 'table':
      return null;

    case 'text':
      return null;

    case 'time':
      return 'TimeSpan';

    case 'timestamp':
      return null;

    case 'tinyint':
      return 'Byte';

    case 'uniqueidentifier':
      return 'Guid';

    case 'User':
      return null;

    case 'varbinary':
      return 'Byte[]';

    case 'varbinary':
      return 'Byte[]';

    case 'varchar':
      return 'String';

    case 'xml':
      return null;

    default:
      return null;
  }
}

// function to write tabs
function writeTabs(num = 1) {
  var result = '';
  for (var i = 0; i < num; i++) {
    result += '  ';
  }
  return result;
}

// function to convert a string array to tab + string array
function writeTabsForArray(arr, tabs = 1) {
  return arr.map((str) => writeTabs(tabs) + str);
}
