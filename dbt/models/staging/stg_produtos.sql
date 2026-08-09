select *
from {{ source('silver', 'produtos') }}