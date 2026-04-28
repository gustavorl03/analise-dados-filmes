# 🎬 Análise de Filmes: Popularidade vs Qualidade

Projeto de análise de dados desenvolvido com foco em entender a relação entre popularidade e qualidade de filmes, utilizando SQL e Power BI.

---

## 📌 Problema de Negócio

As plataformas de streaming enfrentam o desafio de recomendar filmes relevantes considerando tanto a popularidade quanto a qualidade das avaliações.

Apenas usar o número de avaliações pode favorecer conteúdos populares, enquanto considerar apenas a média pode destacar filmes com pouca confiabilidade estatística.

---

## 🎯 Objetivo

Analisar dados de filmes para identificar padrões de comportamento dos usuários e propor uma métrica que combine qualidade e volume de avaliações.

---

## 🛠️ Ferramentas Utilizadas

* Excel: tratamento e limpeza dos dados;
* PostgreSQL: modelagem e análise de dados;
* Power BI: visualização e dashboard.

---

## ⚙️ Etapas do Projeto

* Tratamento de dados no Excel;
* Modelagem e análise no PostgreSQL;
* Criação de views analíticas;
* Desenvolvimento de métricas (média e score);
* Construção do dashboard.

---

## 🗄️ Modelagem e SQL

Os dados foram estruturados em tabelas relacionais e posteriormente transformados em views analíticas.

As principais análises incluem:
- Cálculo de média de avaliações
- Contagem de avaliações por filme
- Agrupamento por gênero
- Criação de métricas derivadas como score

---


## 📊 Métrica de Score

Foi criada uma métrica de score para equilibrar a média de avaliação e o número de avaliações, reduzindo o impacto de filmes com poucas avaliações.

Essa abordagem permite identificar filmes com melhor equilíbrio entre popularidade e qualidade.


## 📊 Dashboard
Visualização interativa desenvolvida no Power BI:

![Dashboard](powerbi/dashboard.png)

---


## 🧠 Principais Insights

A análise evidenciou que filmes com maior volume de avaliações tendem a apresentar notas médias mais estáveis, enquanto filmes com poucas avaliações apresentam maior variabilidade, indicando menor confiabilidade estatística.

Observou-se também que a popularidade, medida pela quantidade de avaliações, não está diretamente associada à qualidade percebida, já que diversos filmes amplamente avaliados possuem médias inferiores a outros menos populares.

A distribuição das avaliações mostra uma forte concentração em notas intermediárias, sugerindo um comportamento conservador dos usuários ao avaliar filmes, com menor incidência de notas extremas.

Além disso, a utilização de um score que combina média de avaliação e volume de avaliações permitiu identificar filmes com melhor equilíbrio entre qualidade e relevância, reduzindo o impacto de avaliações isoladas.

Por fim, a análise por gênero revelou diferenças na concentração de avaliações e médias, indicando possíveis variações no comportamento do público de acordo com o tipo de conteúdo consumido.

---


## 📂 Estrutura do Projeto

```
analise-filmes/
│
├── .gitignore
│
├── dados/
│   ├── brutos/
│   └── tratados/
│
├── excel/
│   ├── movies_final/
│   └── rating_final/
│
├── powerbi/
│   ├── dashboard.pbix
│   └── dashboard.png

├── sql/
│   ├── setup.sql
│   ├── analises.sql
│   └── views.sql
│
├── .gitattributes
├── LICENSE
└── README.md
```
