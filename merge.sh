duckdb <<EOF
LOAD sqlite;
LOAD spatial;

ATTACH 'db.sqlite' AS source (TYPE SQLITE);

CREATE TEMPORARY TABLE merge (
    region VARCHAR NOT NULL,
    year VARCHAR NOT NULL,
    outlet VARCHAR NOT NULL,
    weekly_use_percentage FLOAT,
    at_least_3_days_percentage FLOAT
)
;

INSERT INTO merge
SELECT 
    'taiwan',
    '2017-01-01',
    outlet,
    weekly_use_percentage,
    at_least_3_days_percentage
FROM "source"."taiwan_2017"
;

INSERT INTO merge
SELECT 
    'taiwan',
    '2018-01-01',
    outlet,
    weekly_use_percentage,
    at_least_3_days_percentage
FROM "source"."taiwan_2018";

INSERT INTO merge
SELECT 
    'taiwan',
    '2019-01-01',
    outlet,
    weekly_use_percentage,
    at_least_3_days_percentage
FROM "source"."taiwan_2019";

INSERT INTO merge
SELECT 
    'taiwan',
    '2020-01-01',
    outlet,
    weekly_use_percentage,
    at_least_3_days_percentage
FROM "source"."taiwan_2020";

INSERT INTO merge
SELECT 
    'taiwan',
    '2021-01-01',
    outlet,
    weekly_use_percentage,
    at_least_3_days_percentage
FROM "source"."taiwan_2021";

INSERT INTO merge
SELECT 
    'taiwan',
    '2022-01-01',
    outlet,
    weekly_use_percentage,
    at_least_3_days_percentage
FROM "source"."taiwan_2022"
;

INSERT INTO merge
SELECT
    'taiwan',
    '2023-01-01',
    outlet,
    weekly_use_percentage,
    at_least_3_days_percentage 
FROM "source"."taiwan_2023";

INSERT INTO merge
SELECT 
    'hongkong',
    '2017-01-01',
    outlet,
    weekly_use_percentage,
    at_least_3_days_percentage
FROM "source"."hongkong_2017"
;

INSERT INTO merge
SELECT 
    'hongkong',
    '2018-01-01',
    outlet,
    weekly_use_percentage,
    at_least_3_days_percentage
FROM "source"."hongkong_2018"
;

INSERT INTO merge
SELECT 
    'hongkong',
    '2019-01-01',
    outlet,
    weekly_use_percentage,
    at_least_3_days_percentage
FROM "source"."hongkong_2019"
;

INSERT INTO merge
SELECT 
    'hongkong',
    '2020-01-01',
    outlet,
    weekly_use_percentage,
    at_least_3_days_percentage
FROM "source"."hongkong_2020"
;

INSERT INTO merge
SELECT 
    'hongkong',
    '2021-01-01',
    outlet,
    weekly_use_percentage,
    at_least_3_days_percentage
FROM "source"."hongkong_2021"
;

INSERT INTO merge
SELECT 
    'hongkong',
    '2022-01-01',
    outlet,
    weekly_use_percentage,
    at_least_3_days_percentage
FROM "source"."hongkong_2022"
;

INSERT INTO merge
SELECT 
    'hongkong',
    '2023-01-01',
    outlet,
    weekly_use_percentage,
    at_least_3_days_percentage
FROM "source"."hongkong_2023"
;

COPY merge TO 'merge.parquet';
-- COPY merge TO 'merge.xlsx' WITH (FORMAT GDAL, DRIVER 'xlsx');
EOF