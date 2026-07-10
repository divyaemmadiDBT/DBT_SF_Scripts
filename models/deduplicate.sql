SELECT * FROM {{ source('new_schema', 'USERS1_DTLS_T') }}
qualify row_number() over (partition by id order by id) = 1