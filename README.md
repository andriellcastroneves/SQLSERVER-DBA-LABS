![SQL Server](https://img.shields.io/badge/SQL%20Server-DBA-blue)
![Docker](https://img.shields.io/badge/Docker-Container-blue)
![Status](https://img.shields.io/badge/Status-Em%20Evolução-green)

# 🧠 SQL Server DBA Lab

Laboratório prático de administração de banco de dados utilizando SQL Server em ambiente containerizado.

---

## 🚀 Objetivo

Este projeto foi criado com o objetivo de simular cenários reais enfrentados por um DBA em ambiente de produção, com foco em:

- Performance
- Monitoramento
- Troubleshooting
- Boas práticas de banco de dados

---

## 🐳 Ambiente

- SQL Server rodando em Docker
- Múltiplas instâncias simulando ambiente on-premise
- Base de dados modelada para Ecommerce

---

## 📦 Estrutura do Projeto
# 🧠 SQL Server DBA Lab

Laboratório prático de administração de banco de dados utilizando SQL Server em ambiente containerizado.

---

## 🚀 Objetivo

Este projeto foi criado com o objetivo de simular cenários reais enfrentados por um DBA em ambiente de produção, com foco em:

- Performance
- Monitoramento
- Troubleshooting
- Boas práticas de banco de dados

---

## 🐳 Ambiente

- SQL Server rodando em Docker
- Múltiplas instâncias simulando ambiente on-premise
- Base de dados modelada para Ecommerce

---

## 📦 Estrutura do Projeto

dba-sqlserver-lab/
│
├── 01-database-design/
├── 02-data-generation/
├── 03-index-performance/
├── 04-monitoring/
├── 05-troubleshooting/
│
├── docker/
│ └── docker-compose.yml
│
└── README.md

---

## 🗄️ Modelagem do Banco

Banco de dados simula um cenário de Ecommerce com as seguintes entidades:

- Clientes
- Endereços
- Produtos
- Categorias
- Pedidos
- Itens do Pedido
- Pagamentos
- Estoque

---

## 📊 Volume de Dados

Ambiente preparado para simular carga real:

- +10.000 clientes  
- +2.000 produtos  
- +50.000 pedidos  
- +200.000 itens de pedido  

---

## ⚡ Performance e Indexação

Neste projeto foram aplicadas técnicas de otimização como:

- Criação de índices (Clustered e Non-Clustered)
- Índices de cobertura (Covering Index)
- Análise de Execution Plan
- Redução de custo de queries

---

## 📈 Monitoramento

Uso de DMVs (Dynamic Management Views) para análise em tempo real:

- Queries mais pesadas
- Consumo de CPU
- Uso de IO
- Sessões ativas

---

## 🚨 Troubleshooting

Simulação de problemas reais:

### 🔴 Locks
- Identificação de sessões bloqueadas
- Análise de bloqueios
- Resolução com KILL / COMMIT

### 💣 Deadlocks
- Simulação de deadlocks
- Análise de causa raiz
- Estratégias de prevenção

### 🔥 Alta utilização de CPU
- Identificação de queries custosas
- Otimização com índices
- Refatoração de queries

---

## 🧪 Tecnologias Utilizadas

- SQL Server
- Docker
- T-SQL

---

## 🎯 Aprendizados

Durante este projeto foram desenvolvidas habilidades como:

- Modelagem de banco de dados
- Escrita de queries complexas
- Performance tuning
- Monitoramento de ambiente
- Diagnóstico e resolução de problemas

---

## 📌 Próximos Passos

- Implementação de Backup e Restore
- Estratégias de Recovery (PITR)
- Automação de monitoramento
- Simulação de falhas em produção

---

## 👨‍💻 Autor

Projeto desenvolvido com foco em evolução para a posição de DBA SQL Server.
