SELECT {{concat_film_id_and_title(table_name='film')}} AS film_id_and_title, count_rentals FROM {{ref('rentals_by_film_id_from_model_ref')}} AS rentals_by_film_id
INNER JOIN {{ source('my_pagila_db_source', 'film') }} AS film on rentals_by_film_id.film_id = film.film_id
LIMIT {{ env_var('DBT_ROW_LIMIT', 10) }}