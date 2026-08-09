select
    vendedor_id,
    matricula,
    nome,
    cd_id,
    meta_mensal_base,
    ativo
from {{ ref('stg_vendedores') }}