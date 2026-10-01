SELECT
    dvd.titre,
    CONCAT_WS(' ', clients.civilite, clients.nom, clients.prenom) AS client,
    CONCAT_WS(' ', realisateurs.nom, realisateurs.prenom) AS realisateur
FROM
	locations
JOIN dvd ON dvd.id = locations.dvd_id
JOIN realisateurs ON realisateurs.id = dvd.realisateur_id
JOIN factures ON factures.id = locations.facture_id
JOIN clients ON clients.id = factures.client_id
ORDER BY
dvd.titre ASC;