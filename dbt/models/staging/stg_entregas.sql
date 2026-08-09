select *
from {{ source('silver', 'entregas') }}