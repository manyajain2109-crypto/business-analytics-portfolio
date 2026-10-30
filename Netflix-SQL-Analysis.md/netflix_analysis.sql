Q1. What are the top 10 movies based on IMDb score?
SELECT title, imdb_score
FROM netflix_analysis.titles
WHERE imdb_score IS NOT NULL
ORDER BY imdb_score DESC 
LIMIT 10;                                              
Q2.What are the bottom 10 movies based on IMDb score?
SELECT title , imdb_score
FROM netflix_analysis.titles
WHERE imdb_score IS NOT NULL
ORDER BY imdb_score ASC 
LIMIT 10;
Q3. How many netflix titles were released in each decade?
SELECT 
    FLOOR(release_year / 10)*10 AS decade,
    COUNT(*) AS total_titles
FROM netflix_analysis.titles
GROUP BY decade
ORDER BY decade;
Q4. How many movies and tv shows are in the dataset?
SELECT show_type, COUNT(*) AS total_titles
FROM netflix_analysis.titles
GROUP BY show_type;
Q5. Which release years have the highest number of movies and tv shows on netflix?
SELECT release_year,COUNT(*) AS total_titles
FROM netflix_analysis.titles
GROUP BY release_year
ORDER BY total_titles DESC 
LIMIT 10;
Q6. How did age-certification impact the dataset?
SELECT age_certification
FROM netflix_analysis.titles
GROUP BY age_certification;                                                                                                                                                                     
Q7.find the average IMDb and TMDB scores for each age certification , ranked by IMDb score.
SELECT age_certification,
        ROUND(AVG(imdb_score), 2) AS avg_imdb_score,
        ROUND(AVG(tmdb_score), 2) AS avg_tmdb_score
FROM netflix_analysis.titles
GROUP BY age_certification
ORDER BY avg_imdb_score DESC;
LIMIT 10;

Q8.Which geners are the most common among shows?
SELECT geners, COUNT(*)
FROM netflix_analysis.titles
WHERE show_type='SHOW'
GROUP BY geners
ORDER BY COUNT(*) DESC 
LIMIT 10;




    
	


