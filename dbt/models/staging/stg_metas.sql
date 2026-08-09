select *
from {{ source('silver', 'metas') }}