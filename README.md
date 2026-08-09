# Solar Data Platform — Laboratório Azure

Projeto educacional de Engenharia de Dados inspirado no cenário de uma grande distribuidora de bebidas.
**Não contém dados internos ou proprietários da Solar Coca-Cola. Todos os dados são sintéticos.**

## Stack-alvo
Azure Data Factory → ADLS Gen2 → Azure Databricks (PySpark/Delta Lake) → dbt → Power BI
com Git/Azure DevOps e, posteriormente, Terraform.

## Camadas
- `landing`: arquivos recebidos das fontes
- `bronze`: dados brutos persistidos
- `silver`: dados tratados e conformados
- `gold`: modelos analíticos
- `archive`: histórico/arquivamento
- `logs`: logs operacionais

## Dados sintéticos
- 3.000 clientes
- 80 produtos
- 60 vendedores
- 5 centros de distribuição fictícios
- 25.000 registros de vendas
- 400 posições de estoque
- 10.000 entregas
- metas mensais por vendedor

## Primeiro exercício
1. Faça upload das pastas/arquivos de `data/landing/` para o container `landing` no ADLS Gen2.
2. Crie o Azure Data Factory no resource group `rg-solar-dev`.
3. Configure um Linked Service para o ADLS Gen2.
4. Construa o primeiro pipeline parametrizado `PL_INGESTAO_LANDING_BRONZE`.
5. Copie dados da landing para bronze preservando a origem.
