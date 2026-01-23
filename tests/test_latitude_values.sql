-- test la valeur de la latitude dans l'intervalle [-90.0,90]
SELECT *
FROM {{ ref('curation_listening') }}
WHERE  latitude < -90.0
        OR latitude > 90.0