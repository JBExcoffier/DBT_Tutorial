{% test all_column_values_strictly_above_threshold(model, column_name, threshold=0) %}
    SELECT * FROM {{ model }} WHERE {{ column_name }} <= {{ threshold }}
{% endtest %}