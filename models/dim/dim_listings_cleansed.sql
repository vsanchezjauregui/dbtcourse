{{
  config(
    materialized = 'view',
    )
}}
WITH src_listings AS (
    SELECT 
        *
    FROM 
        {{ ref("src_listings") }}
    )
SELECT
    listing_id,
    listing_name,
    room_type,
    IFF(minimum_nights=0,1,minimum_nights) AS minimum_nights,
    host_id,
    REPLACE(price_str,'$')::NUMBER(10,2) AS price,
    created_at,
    updated_at,
FROM
    src_listings