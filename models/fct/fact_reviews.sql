{{
    config(
    materialized = 'incremental',
    on_schema_change = 'fail'
    )
}}
WITH src_reviews AS (
    SELECT
        *
    FROM
        {{ref("src_reviews")}}
    )    
SELECT
    listing_id,
    review_date,
    reviewer_name,
    review_text,
    review_sentiment,
FROM 
    src_reviews
WHERE
    review_text IS NOT NULL
{% if is_incremental() %}
  and review_date >= (select max(review_date) from {{ this }})
{% endif %}