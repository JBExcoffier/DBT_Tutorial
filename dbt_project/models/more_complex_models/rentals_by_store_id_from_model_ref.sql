SELECT inventory_and_rental_table.store_id, COUNT(inventory_and_rental_table.rental_id) AS count_rentals
FROM {{ref('inventory_and_rentals_view')}} AS inventory_and_rental_table
GROUP BY inventory_and_rental_table.store_id
ORDER BY count_rentals DESC 