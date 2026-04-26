-- ========================================
-- 1. CRIAÇÃO DO BANCO
-- ========================================

-- CREATE DATABASE filmes_analise;

-- ========================================
-- 2. TABELAS
-- ========================================

CREATE TABLE movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(255),
    year INT,
    genres VARCHAR(255),
    genre_count INT
);

CREATE TABLE ratings (
    user_id INT,
    movie_id INT,
    rating NUMERIC(2,1),
    rating_date DATE,
    rating_year INT,
    PRIMARY KEY (user_id, movie_id),
    FOREIGN KEY (movie_id) REFERENCES movies(movie_id)
);

-- ========================================
-- 3. ÍNDICES
-- ========================================

CREATE INDEX idx_ratings_movie_id ON ratings(movie_id);

-- ========================================
-- 4. IMPORTAÇÃO DE DADOS
-- ========================================

\copy movies(movie_id, title, year, genres, genre_count) 
FROM 'D:/Estudos/analise-dados-filmes/dados_tratados/movies_tratados.csv' 
WITH (FORMAT csv, HEADER true, DELIMITER ';');

\copy ratings(user_id, movie_id, rating, rating_date, rating_year) 
FROM 'D:/Estudos/analise-dados-filmes/dados_tratados/ratings_tratados.csv' 
WITH (FORMAT csv, HEADER true, DELIMITER ';');

-- ========================================
-- 5. VALIDAÇÃO
-- ========================================

SELECT COUNT(*) FROM ratings;
SELECT COUNT(*) FROM movies;
SELECT * FROM movies LIMIT 10;
SELECT * FROM ratings LIMIT 10;

SELECT COUNT(*) 
FROM movies
WHERE title IS NULL;

SELECT COUNT(*) 
FROM ratings
WHERE rating IS NULL;

SELECT MIN(rating), MAX(rating)
FROM ratings;

SELECT user_id, movie_id, COUNT(*)
FROM ratings
GROUP BY user_id, movie_id
HAVING COUNT(*) > 1;

SELECT *
FROM ratings r
LEFT JOIN movies m ON r.movie_id = m.movie_id
WHERE m.movie_id IS NULL;

SELECT 
m.title,
r.rating
FROM ratings r
JOIN movies m ON r.movie_id = m.movie_id
LIMIT 10;