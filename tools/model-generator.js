function onConvertToModel() {
  // get the input from textarea with id = convertor-input
  var input = document.getElementById('convertor-input').value;

  // --- convert the input to model

  // loop through each line
  var lines = input.split('\n');
  var i = 0;
  while (!lines[i].includes('CREATE TABLE')) {
    i++;
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

  while (!lines[i].includes('CONSTRAINT')) {
    var line = lines[i];
    console.log(`processing line ${i}: ${line}`);

    // Expected structure: [column name] [column type] [NULL|NOT NULL] [DEFAULT|NULL]],
    var splitted = line.split(' ');
    var columnName = splitted[0].substring(splitted[0].indexOf('[') + 1, splitted[0].indexOf(']'));
    var columnType = splitted[1].substring(splitted[1].indexOf('[') + 1, splitted[1].indexOf(']'));
    var columnNullable = splitted[2].includes('NULL') ? true : false;

    columns.push({
      name: columnName,
      type: columnType,
      isNullable: columnNullable,
    });

    i++;
  }
  console.log(`found last column line ${i - 1}: ${lines[i - 1]}`);

  var convertedColumns = columns.map((col) => ({ ...col, type: convertType(col.type) ?? '(Unsupported Type)' }));
  console.log('convertedColumns:', convertedColumns);

  // --- generate the output
  var result = getVbNamespace(tableName, [getVbClassStr(tableName, convertedColumns)]);

  // set the output to textarea with id = convertor-output
  document.getElementById('convertor-output').value = result;
}

// Return the VB namespace string
function getVbNamespace(tableName, arrBodyStrs) {
  var header = `Namespace NS${toPascalCase(tableName)}Model`;
  var footer = `End Namespace`;
  return [header, ...arrBodyStrs, footer].join('\n');
}

// Return the VB class string
function getVbClassStr(tableName, convertedColumns) {
  var header = `Public Class ${toPascalCase(tableName)}Model`;
  var footer = `End Class`;

  // map convertedColumns to VB properties
  var arrBodyStrs = convertedColumns.map((col) => {
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
    return `Public ${toPascalCase(name)} As ${type}${nullableStr}`;
  });

  // add constructor
  var tab = '    ';
  var constructorParams = convertedColumns.map((col) => {
    if (col.isNullable) {
      if (col.type === 'String' || col.type === 'Object') {
        return tab + `Optional ${toPascalCase(col.name)} As ${col.type} = Nothing,`;
      } else {
        return tab + `Optional ${toPascalCase(col.name)} As ${col.type}? = Nothing,`;
      }
    } else {
      return tab + `${toPascalCase(col.name)} As ${col.type},`;
    }
  });
  // remove the extra comma at the end
  constructorParams[constructorParams.length - 1] = constructorParams[constructorParams.length - 1].replace(',', '');

  // add constructor body
  var classConstructor = [
    `Public Sub New(`,
    ...constructorParams,
    ')',
    ...convertedColumns.map((col) => {
      return tab + `Me.${toPascalCase(col.name)} = ${toPascalCase(col.name)}`;
    }),
    `End Sub`,
  ];

  return [header, ...arrBodyStrs, ...classConstructor, footer].join('\n');
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
  console.log('type:', type);
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
      return 'DateTime';

    case 'datetime':
      return 'DateTime';

    case 'datetime2':
      return 'DateTime';

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

// convert string from snake_case to PascalCase
function toPascalCase(str) {
  return str
    .split('_')
    .map((word) => word.charAt(0).toUpperCase() + word.slice(1))
    .join('');
}
