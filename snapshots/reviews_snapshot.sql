{% snapshot reviews_snapshot %}

    {{
        config(
          target_database='airbnb',
          target_schema='snapshots',
          strategy='check',
          check_cols='all',
          unique_key=['listing_id','date']
        )
    }}

    SELECT * 
    FROM {{ source('raw_airbnb_data', "reviews") }}
    WHERE date RLIKE '^[0-9]{4}-[0-9]{2}-[0-9]{2}$'
        AND date >= '1900-01-01'
        AND date <= current_date()

{% endsnapshot %}