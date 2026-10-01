SELECT
    nom,
    COUNT(*) AS nombre_de_contrats
FROM
    assureurs
JOIN contrats ON contrats.assureur = assureurs.id
GROUP BY
    assureurs.id,
    nom
ORDER BY
    nombre_de_contrats DESC
LIMIT 1;