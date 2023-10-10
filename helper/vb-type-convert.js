import { snakeToCamelCase, snakeToPascalCase, digitToEnglishWord } from './code-help.js';

const sqlServerToDotNetTypes = {
  bigint: 'Long',
  binary: 'Byte()',
  bit: 'Boolean',
  char: 'String',
  date: 'Date',
  datetime: 'Date',
  datetime2: 'Date',
  DATETIMEOFFSET: 'DateTimeOffset',
  decimal: 'Decimal',
  filestream: 'Byte()',
  float: 'Double',
  image: 'Byte()',
  int: 'Integer',
  money: 'Decimal',
  nchar: 'String',
  ntext: 'String',
  numeric: 'Decimal',
  nvarchar: 'String',
  real: 'Single',
  rowversion: 'Byte()',
  smalldatetime: 'Date',
  smallint: 'Short',
  smallmoney: 'Decimal',
  text: 'String',
  time: 'TimeSpan',
  timestamp: 'Byte()',
  tinyint: 'Byte',
  uniqueidentifier: 'Guid',
  varbinary: 'Byte()',
  varchar: 'String',
  xml: 'String',
};

export function convertDbToVbType(type) {
  return sqlServerToDotNetTypes[type] ?? 'Object';
}

/** handle weird column names starting with a digit */
function handleSpecialColName(colName) {
  if (colName[0].match(/\d/)) {
    // replace the first digit with its English word
    let digit = colName[0];
    return `${digitToEnglishWord(digit)}_${colName.substring(1)}`;
  } else {
    return colName;
  }
}

const vbKeywords = [
  'step',
  'module',
  'class',
  'object',
  'string',
  'integer',
  'decimal',
  'double',
  'date',
  'boolean',
  'char',
  'byte',
  'short',
  'long',
  'single',
  'variant',
  'currency',
  'object',
  'error',
  'boolean',
  'byte',
  'currency',
  'date',
  'decimal',
  'double',
  'integer',
  'long',
  'object',
  'short',
  'single',
  'string',
  'variant',
  'empty',
  'null',
  'nothing',
  'true',
  'false',
  'and',
  'as',
  'byref',
  'byval',
  'case',
  'const',
  'dim',
  'do',
  'each',
  'else',
  'elseif',
  'end',
  'error',
  'exit',
  'false',
  'for',
  'function',
  'goto',
  'if',
  'in',
  'loop',
  'me',
  'mod',
  'new',
  'next',
  'not',
  'nothing',
  'on',
  'option',
  'or',
  'private',
  'public',
  'redim',
  'resume',
  'select',
  'set',
  'sub',
  'then',
  'to',
  'true',
  'until',
  'wend',
  'while',
  'with',
  'xor',
];

export function toVbPropertyName(dbColName) {
  dbColName = handleSpecialColName(dbColName);
  dbColName = snakeToPascalCase(dbColName);

  // a rare case where property name is TableName, need to add underscore after it
  if (dbColName === 'TableName') {
    dbColName = 'TableName_';
  }

  if (vbKeywords.includes(dbColName.toLowerCase())) {
    dbColName = `[${dbColName}]`;
  }
  return dbColName;
}

export function toVbParamName(dbColName) {
  dbColName = handleSpecialColName(dbColName);
  dbColName = snakeToCamelCase(dbColName);

  if (vbKeywords.includes(dbColName.toLowerCase())) {
    dbColName = `[${dbColName}]`;
  }
  return dbColName;
}
