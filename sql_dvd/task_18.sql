SELECT
    realisateurs.pays,
    libelle_genre,
    COUNT(dvd.id) AS nb_dvd
FROM
    dvd
JOIN genres_film ON genres_film.id = dvd.genre_id
JOIN realisateurs ON realisateurs.id = dvd.realisateur_id
GROUP BY
    realisateurs.pays,
    genres_film.libelle_genre
ORDER BY
    realisateurs.pays ASC,
    libelle_genre ASC;