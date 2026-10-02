SELECT
    titre,
    clients.nom,
    clients.prenom,
    date_naissance
FROM
    locations
JOIN dvd ON dvd.id = locations.dvd_id
JOIN genres_film ON genres_film.id = dvd.genre_id
JOIN factures ON factures.id = locations.facture_id
JOIN clients ON clients.id = factures.client_id
WHERE
    genres_film.code_genre = 'AV' AND clients.date_naissance BETWEEN '1960-01-01' AND '1969-12-31'
ORDER BY
    titre ASC;