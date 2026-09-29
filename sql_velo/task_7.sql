SELECT
    locations.id,
    nom_complet,
    code,
    date_debut,
    date_fin,
    montant
FROM
    locations
JOIN utilisateurs ON locations.utilisateur_id = utilisateurs.id
JOIN velos ON locations.velo_id = velos.id
JOIN paiements ON paiements.location_id = locations.id
WHERE locations.id = 1;