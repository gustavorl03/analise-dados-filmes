-- ========================================
-- VIEW DE GÊNEROS NORMALIZADOS
-- ========================================

CREATE OR REPLACE VIEW vw_filmes_generos AS
SELECT 
m.movie_id,
m.title,
UNNEST(STRING_TO_ARRAY(m.genres, '|')) AS genero
FROM movies m;

-- ========================================
-- VIEW PRINCIPAL DE ANÁLISE
-- ========================================

CREATE OR REPLACE VIEW vw_filmes_metricas AS
SELECT 
m.movie_id,
m.title,
m.year,
m.genres,
COUNT(*) AS qtd_avaliacoes,
AVG(r.rating) AS media_nota
FROM ratings r
JOIN movies m ON r.movie_id = m.movie_id
GROUP BY m.movie_id, m.title, m.year, m.genres;

-- ========================================
-- SCORE (QUALIDADE + POPULARIDADE)
-- ========================================

CREATE OR REPLACE VIEW vw_filmes_score AS
SELECT *,
(media_nota * LN(qtd_avaliacoes)) AS score
FROM vw_filmes_metricas;

-- ========================================
-- ANÁLISE POR GÊNERO (CORRIGIDA)
-- ========================================

SELECT 
g.genero,
COUNT(r.rating) AS total_avaliacoes
FROM ratings r
JOIN vw_filmes_generos g ON r.movie_id = g.movie_id
GROUP BY g.genero
ORDER BY total_avaliacoes DESC;