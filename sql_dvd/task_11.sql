SELECT
    titre,
    libelle_genre
FROM
    dvd
JOIN genres_film ON genres_film.id = dvd.genre_id
ORDER BY
    titre ASC;