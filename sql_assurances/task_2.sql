SELECT
    modele,
    nom AS assureur
FROM
    vehicules
JOIN contrats ON contrats.vehicule = vehicules.id
JOIN assureurs ON contrats.assureur = assureurs.id
ORDER BY
    assureurs.id;