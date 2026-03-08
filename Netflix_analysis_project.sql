-- SELECT * 
-- FROM netflix_titles
-- LIMIT 10;
SELECT type , COUNT(*) AS total
from netflix_titles
GROUP BY TYPE;

SELECT country, COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY country
ORDER BY total_titles DESC
LIMIT 10;

SELECT release_year, COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY release_year
ORDER BY release_year;

SELECT rating, COUNT(*) AS total
FROM netflix_titles
GROUP BY rating
ORDER BY total DESC;

SELECT listed_in, COUNT(*) AS total
FROM netflix_titles
GROUP BY listed_in
ORDER BY total DESC
LIMIT 10;

SELECT 
COUNT(*) AS total_rows,
COUNT(country) AS country_not_null,
COUNT(director) AS director_not_null,
COUNT(cast) AS cast_not_null
FROM netflix_titles;

SELECT title, type
FROM netflix_titles
WHERE country IS NULL;

SELECT director, COUNT(*) AS total_titles
FROM netflix_titles
WHERE director IS NOT NULL
GROUP BY director
ORDER BY total_titles DESC
LIMIT 10;

SELECT title, release_year
FROM netflix_titles
WHERE type = 'Movie'
AND release_year > 2018;

SELECT title, duration
FROM netflix_titles
WHERE type = 'Movie'
ORDER BY duration DESC
LIMIT 5;

SELECT country, COUNT(*) AS total_content
FROM netflix_titles
GROUP BY country
ORDER BY total_content DESC
LIMIT 10;