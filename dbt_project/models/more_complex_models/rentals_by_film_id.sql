WITH inventory_and_rental_table AS (
   SELECT inventory.inventory_id, inventory.film_id, inventory.store_id, rental.rental_id
    FROM inventory
    INNER JOIN rental ON inventory.inventory_id = rental.inventory_id
)

SELECT inventory_and_rental_table.film_id, COUNT(inventory_and_rental_table.rental_id) as count_rentals
FROM inventory_and_rental_table
GROUP BY inventory_and_rental_table.film_id
ORDER BY count_rentals desc 