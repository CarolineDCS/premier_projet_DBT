-- test le format de l'url du listening
SELECT *
FROM {{ ref('curation_listening') }}
WHERE (listing_url NOT LIKE 'https://%'
        AND listing_url NOT LIKE 'http://%')