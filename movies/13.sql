SELECT people.name FROM people
JOIN stars ON stars.person_id == people.id
WHERE stars.movie_id IN(
-- gives all the movie id with Kevin Bacon
SELECT movies.id FROM movies
JOIN stars ON stars.movie_id == movies.id
JOIN people ON stars.person_id == people.id
WHERE people.name == 'Kevin Bacon' AND people.birth = 1958
)
AND people.id IS NOT (
-- id of Kevin Bacon himself
SELECT people.id FROM people WHERE people.name == 'Kevin Bacon' AND people.birth = 1958
)
GROUP BY people.id;