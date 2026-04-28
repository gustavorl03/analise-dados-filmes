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

## 📊 Dashboard


```markdown
![Dashboard](powerbi/dashboard.png)
```

---

## 🧠 Principais Insights

A análise mostrou que filmes com maior volume de avaliações nem sempre apresentam as melhores notas médias, evidenciando que popularidade não é sinônimo de qualidade.

Observou-se também que filmes com poucas avaliações tendem a apresentar notas mais extremas, o que indica baixa confiabilidade estatística e possível distorção na análise.

A distribuição das avaliações revelou que a maior parte das notas está concentrada entre valores intermediários (3.0 a 4.0), sugerindo um comportamento mais conservador por parte dos usuários.

Além disso, a utilização de um score combinando média de avaliação e volume de avaliações se mostrou mais eficaz para ranquear filmes, reduzindo o impacto de avaliações isoladas e destacando conteúdos mais consistentes.

Por fim, a análise de gêneros indicou a presença de categorias predominantes, refletindo padrões de produção e preferência do público.

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
│   └── dashboard.pbix
│
├── sql/
│   ├── setup.sql
│   ├── analises.sql
│   └── views.sql
│
├── .gitattributes
├── LICENSE
└── README.md
```
