SELECT
    titre,
    prenom,
    nom,
    signification
FROM
    mangas
JOIN mangakas ON mangas.code_mangaka = mangakas.code_mangaka
JOIN genres_manga ON mangas.code_genre = genres_manga.code_genre
WHERE
    signification = 'Horreur';