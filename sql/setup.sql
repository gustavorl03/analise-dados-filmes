CREATE DATABASE filmes_analise;

CREATE TABLE movies (
    movie_id INT,
    title TEXT,
    year INT,
    genres TEXT,
    genre_count INT
);

CREATE TABLE ratings (
    user_id INT,
    movie_id INT,
    rating NUMERIC(2,1),
    rating_date TIMESTAMP,
	rating_year INT
);

\copy movies(movie_id, title, year, genres, genre_count)
FROM 'C:/Users/rapha/OneDrive/Documents/analise-dados-filmes/dados_tratados/movies_tratado.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ';');

\copy ratings(user_id, movie_id, rating, rating_date, rating_year)
FROM 'C:/Users/rapha/OneDrive/Documents/analise-dados-filmes/dados_tratados/ratings_tratado.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ';');

SELECT * FROM movies LIMIT 10;
SELECT * FROM ratings LIMIT 10;
