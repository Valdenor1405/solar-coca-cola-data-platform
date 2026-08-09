select *
from {{ source('silver', 'vendedores') }}