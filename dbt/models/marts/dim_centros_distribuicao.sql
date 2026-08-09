select
    cd_id,
    nome_cd,
    cidade,
    uf,
    regiao
from {{ ref('stg_centros_distribuicao') }}