-- CREATE INDEX rating_index ON ratings(rating);
-- CREATE INDEX director_person_id_index ON directors(person_id);
-- CREATE INDEX director_movie_id_index ON directors(movie_id);

SELECT name FROM people
JOIN directors ON directors.person_id == people.id
JOIN movies ON movies.id == directors.movie_id
JOIN ratings ON ratings.movie_id == movies.id
WHERE ratings.rating >= 9.0
GROUP BY name;