WITH reviews_raw AS (
    SELECT 
        listing_id,
        date AS review_date,
        count(*) AS number_reviews
    FROM {{source("raw_airbnb_data","reviews")}}
    GROUP BY listing_id, review_date
)
SELECT *
FROM reviews_raw
