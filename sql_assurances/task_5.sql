SELECT
    libelle,
    COUNT(vehicules.type_voiture) AS total
FROM
    types_vehicules
LEFT JOIN vehicules ON vehicules.type_voiture = types_vehicules.id
GROUP BY
    libelle
ORDER BY
    total DESC,
    libelle ASC;