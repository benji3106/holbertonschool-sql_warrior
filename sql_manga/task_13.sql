SELECT
    ville,
    SUM(CASE WHEN signification = 'Aventure' THEN 1 ELSE 0 END) AS Aventure,
    SUM(CASE WHEN signification = 'Fantasy' THEN 1 ELSE 0 END) AS Fantasy,
    SUM(CASE WHEN signification = 'Horreur' THEN 1 ELSE 0 END) AS Horreur,
    SUM(CASE WHEN signification = 'Shōnen' THEN 1 ELSE 0 END) AS Shōnen
FROM
    clients
JOIN factures ON clients.code_client = factures.code_client
JOIN table_location ON factures.num_facture = table_location.num_facture
JOIN mangas ON table_location.num_manga = mangas.num_manga
JOIN genres_manga ON mangas.code_genre = genres_manga.code_genre
GROUP BY ville
ORDER BY ville;