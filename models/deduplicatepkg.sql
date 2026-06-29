{{ dbt_utils.deduplicate(
    relation=source('new_schema', 'USERS1_DTLS_T'),
    partition_by='id',
    order_by="id desc",
   )
}}