SELECT
    libelle_genre,
    COUNT(dvd.genre_id) AS nb_dvd
FROM
    genres_film
LEFT JOIN dvd ON dvd.genre_id = genres_film.id
GROUP BY
	genres_film.id,
	libelle_genre
ORDER BY
    nb_dvd DESC,
    libelle_genre ASC;