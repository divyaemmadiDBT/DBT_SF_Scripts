select
{{ dbt_utils.star(from= source('new_schema', 'UTILSSTAREX'), except=["C10", "C2"]) }}
from {{ source('new_schema', 'UTILSSTAREX') }}