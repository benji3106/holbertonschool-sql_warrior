SELECT
    vehicules.id,
    modele
FROM
    vehicules
LEFT JOIN contrats ON contrats.vehicule = vehicules.id
WHERE
    contrats.id IS NULL
ORDER BY
    vehicules.id;