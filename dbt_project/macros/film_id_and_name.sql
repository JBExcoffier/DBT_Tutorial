{% macro concat_film_id_and_title(table_name, format='short') %}
    {% if format == 'short' %}
        CONCAT({{table_name}}.title, ' (id=', {{table_name}}.film_id, ')')
    {% elif format == 'long' %}
        CONCAT('Id: ', {{table_name}}.film_id, ' and Title: ', {{table_name}}.title)
    {% else %}
        {{ exceptions.raise_compiler_error("WRONG INPUT for the 'format' parameter (must be 'short' or 'long')") }}
    {% endif %}
{% endmacro %}