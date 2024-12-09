{{ config(
   materialized="view",
   schema="onlyviews"
) }}

SELECT COUNT(DISTINCT film_id) AS count_films FROM film