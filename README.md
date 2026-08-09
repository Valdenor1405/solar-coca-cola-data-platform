# Solar Coca-Cola Data Platform

Projeto End-to-End de Engenharia de Dados desenvolvido como case de portfólio, simulando um ambiente corporativo de dados inspirado na operação da Solar Coca-Cola.

> **Aviso:** este é um projeto educacional e de portfólio, desenvolvido com dados sintéticos. Não é um projeto oficial da Solar Coca-Cola e não utiliza dados confidenciais ou proprietários da empresa.

## Objetivo

Construir uma plataforma moderna de dados capaz de simular o fluxo completo de informações de uma operação comercial e logística, desde a ingestão dos dados até a disponibilização de indicadores executivos no Power BI.

O projeto contempla dados de:

- Vendas
- Clientes
- Produtos
- Vendedores
- Metas comerciais
- Estoque
- Entregas
- Centros de distribuição

## Arquitetura

O fluxo implementado segue a arquitetura:

Data Sources  
↓  
Azure Data Factory  
↓  
Azure Data Lake Storage Gen2  
↓  
Databricks / PySpark  
↓  
Camadas Bronze e Silver  
↓  
dbt  
↓  
Modelo Dimensional / Gold  
↓  
Power BI  
↓  
Dashboard Executivo

## Tecnologias

- Microsoft Azure
- Azure Data Factory
- Azure Data Lake Storage Gen2
- Azure Databricks
- Apache Spark / PySpark
- Delta Lake
- dbt
- SQL
- Power BI
- Git
- GitHub

## Pipeline de Dados

### 1. Ingestão

O Azure Data Factory é responsável pela orquestração da ingestão dos arquivos da camada Landing para o Data Lake.

### 2. Bronze

Os dados são armazenados preservando sua estrutura original, permitindo rastreabilidade e reprocessamento.

### 3. Silver

Databricks e PySpark são utilizados para limpeza, tipagem, padronização e transformação dos dados.

### 4. Transformação com dbt

O dbt é utilizado para organizar a camada analítica, incluindo:

- Sources
- Staging models
- Dimensões
- Tabela fato
- Testes de qualidade
- Testes de integridade referencial
- Documentação e lineage

## Modelo Dimensional

O modelo analítico utiliza Star Schema.

### Tabela Fato

`fct_vendas`

### Dimensões

- `dim_clientes`
- `dim_produtos`
- `dim_vendedores`
- `dim_centros_distribuicao`

O modelo foi desenvolvido para facilitar análises comerciais e consumo pelo Power BI.

## Qualidade dos Dados

O projeto possui testes automatizados no dbt para validação de:

- Valores nulos
- Unicidade de chaves
- Integridade referencial
- Relacionamentos entre fato e dimensões

Resultado da validação executada:

**18 testes executados com sucesso.**

## Power BI

O projeto inclui um Dashboard Executivo de Vendas com indicadores como:

- Faturamento Total
- Total de Vendas
- Ticket Médio
- Quantidade Vendida
- Evolução do Faturamento
- Faturamento por Centro de Distribuição
- Faturamento por Estado
- Faturamento por Categoria
- Top Produtos
- Faturamento por Segmento de Cliente
- Faturamento por Vendedor
- Meta x Realizado
- Percentual de Atingimento da Meta

Também foram implementados filtros interativos por:

- Centro de Distribuição
- Categoria
- Vendedor
- Período

## Dashboard

![Dashboard Executivo de Vendas](imagens/Captura%20de%20tela%202026-08-09%20131150.png)

## Estrutura do Projeto

```text
solar-coca-cola-data-platform/
│
├── azure-devops/
├── data/
│   └── landing/
├── dbt/
│   └── models/
│       ├── staging/
│       └── marts/
├── docs/
├── imagens/
├── infrastructure/
│   └── terraform/
├── notebooks/
│   └── databricks/
├── pipelines/
│   └── adf/
├── dashboard_executivo_vendas.pbix
└── README.md
