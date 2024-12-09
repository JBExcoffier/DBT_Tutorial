{{ config(
   materialized="view",
   schema="onlyviews"
) }}

SELECT inventory.inventory_id, inventory.film_id, inventory.store_id, rental.rental_id
FROM inventory
INNER JOIN rental ON inventory.inventory_id = rental.inventory_id