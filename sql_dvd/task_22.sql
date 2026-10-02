SELECT
    factures.id AS facture_id,
    factures.date_facture,
    clients.nom,
    clients.prenom,
    SUM(types_location.tarif) AS montant_total
FROM
    factures
JOIN clients ON clients.id = factures.client_id
JOIN locations ON locations.facture_id = factures.id
JOIN types_location ON types_location.id = locations.type_location_id
GROUP BY
    factures.id,
    factures.date_facture,
    clients.nom,
    clients.prenom
ORDER BY
    montant_total DESC,
    facture_id ASC;