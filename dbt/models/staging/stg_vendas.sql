with source as (

    select *
    from {{ source('silver', 'vendas') }}

),

renamed as (

    select
        venda_id,
        data_venda,
        cliente_id,
        produto_id,
        vendedor_id,
        cd_id,
        quantidade,
        preco_unitario,
        desconto_pct,
        valor_bruto,
        valor_liquido,
        data_processamento
    from source

)

select *
from renamed