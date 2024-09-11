-- create schema retailshop;

use retailshop;
select * from online_retail;
  -- Meta data
SELECT schema_name AS retailshop
FROM INFORMATION_SCHEMA.SCHEMATA;
show tables;
-- column count
select* from online_retail;

SELECT 
COUNT(*) AS column_count
FROM INFORMATION_SCHEMA.COLUMNS
WHERE table_schema = 'retailshop'
  AND table_name = 'online_retail';
  
  -- row count
SELECT COUNT(*) AS row_count
FROM  online_retail;

-- indexes
SELECT index_name, column_name
FROM information_schema.statistics
WHERE table_name = 'online_retail'
  AND table_schema = 'retailshop';

  -- constraints
  SELECT 
    constraint_name, constraint_type, column_name
FROM
    INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE
    table_schema = 'retailshop'
        AND table_name = 'online_retail';
