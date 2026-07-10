{{
    config(
        store_failures=true
          )
}}
SELECT * FROM {{ ref('stg_test_ex1') }}
WHERE REVENUE<0