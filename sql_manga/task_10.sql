SELECT
    factures.num_facture,
    prenom,
    nom,
    mangas.titre,
    libelle,
    date_retour
FROM
    table_location
JOIN factures ON table_location.num_facture = factures.num_facture
JOIN mangas ON table_location.num_manga = mangas.num_manga
JOIN types_location ON table_location.code_type = types_location.code_type
JOIN clients ON factures.code_client = clients.code_client;