{% test dbt_validate_mail(model,column_name) %}
    SELECT *
  FROM {{model}}
  where {{column_name}} not like '%@%'
{% endtest %}