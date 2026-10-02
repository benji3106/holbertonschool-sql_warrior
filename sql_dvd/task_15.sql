SELECT
    clients.nom,
    clients.prenom,
    titre,
    date_facture
FROM
    locations
JOIN dvd ON dvd.id = locations.dvd_id
JOIN realisateurs ON realisateurs.id = dvd.realisateur_id
JOIN factures ON factures.id = locations.facture_id
JOIN clients ON clients.id = factures.client_id
WHERE
    realisateurs.pays = 'ALLEMAGNE' AND factures.date_facture BETWEEN '2006-06-01' AND '2006-06-30'
ORDER BY
    clients.nom ASC,
    clients.prenom ASC,
    titre ASC;