duckdb <<EOF
ATTACH 'data.sqlite' AS source (TYPE SQLITE);

CREATE TEMPORARY TABLE merge (
    year Date NOT NULL,
    outlet VARCHAR NOT NULL,
    weekly_use_percentage FLOAT,
    at_least_3_days_percentage FLOAT
)
;

INSERT INTO merge
SELECT 
    '2017-01-01',
    outlet,
    weekly_use_percentage,
    at_least_3_days_percentage
FROM "source"."2017";

INSERT INTO merge
SELECT 
    '2018-01-01',
    outlet,
    weekly_use_percentage,
    at_least_3_days_percentage
FROM "source"."2018";

INSERT INTO merge
SELECT 
    '2019-01-01',
    outlet,
    weekly_use_percentage,
    at_least_3_days_percentage
FROM "source"."2019";

INSERT INTO merge
SELECT 
    '2020-01-01',
    outlet,
    weekly_use_percentage,
    at_least_3_days_percentage
FROM "source"."2020";

INSERT INTO merge
SELECT 
    '2021-01-01',
    outlet,
    weekly_use_percentage,
    at_least_3_days_percentage
FROM "source"."2021";

INSERT INTO merge
SELECT 
    '2022-01-01',
    outlet,
    weekly_use_percentage,
    at_least_3_days_percentage
FROM "source"."2022"
;

INSERT INTO merge
SELECT
    '2023-01-01',
    outlet,
    weekly_use_percentage,
    at_least_3_days_percentage 
FROM "source"."2023";

COPY merge TO 'merge.parquet';

EOF