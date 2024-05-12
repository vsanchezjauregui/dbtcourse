SELECT  
    * 
FROM
    {{ ref("fact_reviews") }} a 
LEFT JOIN
    {{ ref("dim_listings_cleansed") }} b
        using (listing_id)
WHERE 
    a.review_date < b.created_at
