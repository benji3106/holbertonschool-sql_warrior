SELECT
    titre,
    nom,
    prenom,
    pays,
    libelle_genre
FROM
    dvd
JOIN genres_film ON genres_film.id = dvd.genre_id
JOIN realisateurs ON realisateurs.id = dvd.realisateur_id
ORDER BY
    dvd.titre ASC;