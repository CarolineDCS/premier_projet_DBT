-- test si la location de la table curation_host est au bon format * , *
SELECT *
FROM {{ref('curation_host')}}
WHERE host_location NOT RLIKE'^[a-zA-Z0-9_\\s]+,[a-zA-Z0-9_\\s]+$'