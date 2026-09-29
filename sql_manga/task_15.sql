SELECT
    signification,
    libelle,
    COUNT(*) AS nombre_location
FROM
    table_location
JOIN types_location ON table_location.code_type = types_location.code_type
JOIN mangas ON table_location.num_manga = mangas.num_manga
JOIN genres_manga ON mangas.code_genre = genres_manga.code_genre
GROUP BY signification, libelle
ORDER BY signification, libelle;