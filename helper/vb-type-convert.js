import { snakeToCamelCase, snakeToPascalCase } from './code-help.js';

const sqlServerToDotNetTypes = {
  bigint: 'Int64',
  binary: 'Byte[]',
  bit: 'Boolean',
  char: null,
  cursor: null,
  date: 'Date',
  datetime: 'Date',
  datetime2: 'Date',
  DATETIMEOFFSET: 'DateTimeOffset',
  decimal: 'Decimal',
  float: 'Double',
  geography: null,
  hierarchyid: null,
  image: null,
  int: 'Integer',
  money: 'Decimal',
  nchar: 'String',
  ntext: null,
  numeric: 'Decimal',
  nvarchar: 'String',
  real: 'Single',
  rowversion: 'Byte[]',
  smallint: 'Short',
  smallmoney: 'Decimal',
  sql_variant: 'Object',
  table: null,
  text: null,
  time: 'TimeSpan',
  timestamp: 'Date',
  tinyint: 'Byte',
  uniqueidentifier: 'Guid',
  'User-defined type(UDT)': null,
  varbinary: 'Byte[]',
  'varbinary(1)': 'Byte[]',
  varchar: 'String',
  xml: null,
};

export function convertDbToVbType(type) {
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
  return sqlServerToDotNetTypes[type] ?? null;
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
  dbColName = snakeToPascalCase(dbColName);

  if (vbKeywords.includes(dbColName.toLowerCase())) {
    dbColName = `[${dbColName}]`;
  }
  return dbColName;
}

export function toVbParamName(dbColName) {
  dbColName = snakeToCamelCase(dbColName);

  if (vbKeywords.includes(dbColName.toLowerCase())) {
    dbColName = `[${dbColName}]`;
  }
  return dbColName;
}
