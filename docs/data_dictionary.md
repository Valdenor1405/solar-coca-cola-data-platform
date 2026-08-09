## clientes

- `cliente_id`: int64
- `codigo_cliente`: object
- `razao_social`: object
- `segmento`: object
- `cidade`: object
- `uf`: object
- `data_cadastro`: object
- `ativo`: bool

## produtos

- `produto_id`: int64
- `sku`: object
- `descricao`: object
- `categoria`: object
- `marca`: object
- `custo_unitario`: float64
- `preco_lista`: float64
- `ativo`: bool

## vendedores

- `vendedor_id`: int64
- `matricula`: object
- `nome`: object
- `cd_id`: int64
- `meta_mensal_base`: float64
- `ativo`: bool

## centros_distribuicao

- `cd_id`: int64
- `nome_cd`: object
- `cidade`: object
- `uf`: object
- `regiao`: object

## vendas

- `venda_id`: int64
- `data_venda`: object
- `cliente_id`: int64
- `produto_id`: int64
- `vendedor_id`: int64
- `quantidade`: int64
- `desconto_pct`: float64
- `preco_unitario`: float64
- `valor_bruto`: float64
- `valor_liquido`: float64
- `cd_id`: int64

## estoque

- `cd_id`: int64
- `produto_id`: int64
- `quantidade_estoque`: int64
- `estoque_minimo`: int64
- `data_atualizacao`: object

## entregas

- `entrega_id`: int64
- `venda_id`: int64
- `cd_id`: int64
- `data_prevista`: object
- `data_entrega`: object
- `dias_atraso`: int64
- `status_entrega`: object

## metas

- `mes_referencia`: object
- `vendedor_id`: int64
- `cd_id`: int64
- `meta_valor`: float64