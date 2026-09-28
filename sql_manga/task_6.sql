SELECT
    signification AS genre,
    COUNT(*) AS nombre_de_manga_par_genre
FROM
    mangas
JOIN genres_manga ON mangas.code_genre = genres_manga.code_genre
GROUP BY
    signification
ORDER BY
    nombre_de_manga_par_genre DESC;