-- test le format du prix  dddddd.ddd
--  [espace] .ddd
SELECT *
FROM {{ ref('curation_listening') }}
WHERE price NOT RLIKE '^[0-9]*(\\.[0-9]{0,2})?$'