{{
    config(
        materialized='incremental',
        unique_key= 'id',
        incremental_strategy='merge'
        )
}}
SELECT * from {{ source('new_schema', 'EMPLOYEE_TABLE_INCR') }}
{% if is_incremental() %}
    -- this filter will only be applied on an incremental run
    where id > (select max(id) from {{ this }}) 
{% endif %}
