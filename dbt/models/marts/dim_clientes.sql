select
    cliente_id,
    codigo_cliente,
    razao_social,
    segmento,
    cidade,
    uf,
    data_cadastro,
    ativo
from {{ ref('stg_clientes') }}