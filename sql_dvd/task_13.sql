SELECT DISTINCT
    clients.nom,
    clients.prenom
FROM
    clients
JOIN factures ON factures.client_id = clients.id
WHERE
	factures.date_facture BETWEEN '2006-06-01' AND '2006-06-30'
ORDER BY
    clients.nom ASC;