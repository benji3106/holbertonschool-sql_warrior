SELECT
    libelle_genre,
    ROUND(AVG(dvd.duree_minutes), 1) AS duree_moyenne
FROM
    genres_film
JOIN dvd ON dvd.genre_id = genres_film.id
GROUP BY
	genres_film.id,
	libelle_genre
ORDER BY
    duree_moyenne DESC,
    libelle_genre ASC;