SELECT
    code_client,
    clients.nom,
    clients.prenom,
    COUNT(locations.id) AS nb_dvd_loues
FROM
	clients
JOIN factures ON factures.client_id = clients.id
JOIN locations ON factures.id = locations.facture_id
GROUP BY
	clients.id,
    clients.code_client,
    clients.nom,
    clients.prenom
ORDER BY
	nb_dvd_loues DESC,
    clients.nom ASC,
    clients.prenom ASC;