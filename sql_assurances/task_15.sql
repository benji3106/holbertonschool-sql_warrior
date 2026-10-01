SELECT
    id,
    modele,
    COUNT(DISTINCT debut_dep) AS nombre_total_de_trajets
FROM
    vehicules
JOIN deplacements ON deplacements.vehicule = vehicules.id
GROUP BY
	vehicules.id,
    modele
ORDER BY
    nombre_total_de_trajets DESC,
    id ASC;