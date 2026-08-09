select *
from {{ source('silver', 'estoque') }}