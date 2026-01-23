-- test si la date host_since est valide 
-- pas dans le futur, pas trop loin dans le passé et au bon format 
SELECT *
FROM {{ref('curation_reviews')}}
WHERE review_date NOT RLIKE '^[0-9]{4}-[0-9]{2}-[0-9]{2}$'
      OR review_date < '1900-01-01'
      OR review_date > current_date()