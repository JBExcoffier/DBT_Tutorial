SELECT inventory_and_rentals.film_id, COUNT(inventory_and_rentals.rental_id) AS count_rentals
FROM {{ref('inventory_and_rentals_view')}} AS inventory_and_rentals
GROUP BY inventory_and_rentals.film_id
ORDER BY count_rentals DESC 