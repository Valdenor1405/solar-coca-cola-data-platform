select
    produto_id,
    sku,
    descricao,
    categoria,
    marca,
    custo_unitario,
    preco_lista,
    ativo
from {{ ref('stg_produtos') }}