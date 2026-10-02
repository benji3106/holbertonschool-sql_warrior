SELECT
    genres_film.libelle_genre,
    COUNT(locations.id) AS nb_locations
FROM
    locations
JOIN dvd ON dvd.id = locations.dvd_id
JOIN genres_film ON genres_film.id = dvd.genre_id
GROUP BY
    genres_film.id,
    genres_film.libelle_genre
ORDER BY
    nb_locations DESC,
    genres_film.libelle_genre ASC;