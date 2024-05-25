WITH mart_fullmoon_reviews AS (
    SELECT
        *
    FROM
        {{ ref("mart_fullmoon_reviews") }}
)
SELECT
    is_full_moon,
    review_sentiment,
    COUNT(*) AS reviews
FROM
    mart_fullmoon_reviews
GROUP BY ALL
ORDER BY 1,2