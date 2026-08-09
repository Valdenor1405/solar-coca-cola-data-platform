select *
from {{ source('silver', 'clientes') }}