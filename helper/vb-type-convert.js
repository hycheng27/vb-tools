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
