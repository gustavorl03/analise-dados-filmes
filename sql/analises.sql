 ========================================
-- ANÁLISE EXPLORATÓRIA - FILMES
-- ========================================

-- ========================================
-- 1. VALIDAÇÃO DOS DADOS
-- ========================================

-- Verificar nulos
SELECT COUNT(*) FROM movies WHERE title IS NULL;
SELECT COUNT(*) FROM ratings WHERE rating IS NULL;

-- Verificar limites
SELECT MIN(rating), MAX(rating) FROM ratings;

-- Verificar duplicatas
SELECT user_id, movie_id, COUNT(*)
FROM ratings
GROUP BY user_id, movie_id
HAVING COUNT(*) > 1;

-- Verificar integridade (JOIN)
SELECT *
FROM ratings r
LEFT JOIN movies m ON r.movie_id = m.movie_id
WHERE m.movie_id IS NULL;

-- ========================================
-- 2. ANÁLISE INICIAL
-- ========================================

-- Total de avaliações
SELECT COUNT(*) AS total_avaliacoes FROM ratings;

-- Média geral
SELECT AVG(rating) AS media_geral FROM ratings;

-- ========================================
-- 3. POPULARIDADE (Filmes mais avaliados)
-- ========================================

SELECT 
m.title,
COUNT(*) AS total_avaliacoes
FROM ratings r
JOIN movies m ON r.movie_id = m.movie_id
GROUP BY m.title
ORDER BY total_avaliacoes DESC
LIMIT 10;

-- ========================================
-- 4. QUALIDADE (Melhores filmes)
-- ========================================

SELECT 
m.title,
AVG(r.rating) AS media_nota,
COUNT(*) AS qtd_avaliacoes
FROM ratings r
JOIN movies m ON r.movie_id = m.movie_id
GROUP BY m.title
HAVING COUNT(*) > 100
ORDER BY media_nota DESC
LIMIT 10;

-- ========================================
-- 5. DISTRIBUIÇÃO DE NOTAS
-- ========================================

SELECT 
rating,
COUNT(*) AS quantidade
FROM ratings
GROUP BY rating
ORDER BY rating;

-- ========================================
-- 6. POPULARIDADE VS QUALIDADE
-- ========================================

SELECT 
m.title,
COUNT(*) AS qtd_avaliacoes,
AVG(r.rating) AS media_nota
FROM ratings r
JOIN movies m ON r.movie_id = m.movie_id
GROUP BY m.title;

-- ========================================
-- TESTE DAS VIEWS
-- ========================================

-- Testar métricas
SELECT *
FROM vw_filmes_metricas
LIMIT 10;

-- Testar score
SELECT *
FROM vw_filmes_score
ORDER BY score DESC
LIMIT 10;

-- Testar gêneros
SELECT *
FROM vw_filmes_generos
LIMIT 10;
