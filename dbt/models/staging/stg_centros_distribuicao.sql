select *
from {{ source('silver', 'centros_distribuicao') }}