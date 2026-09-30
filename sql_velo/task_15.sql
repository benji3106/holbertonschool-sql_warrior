SELECT
    MONTH(locations.date_debut) AS mois,
    COUNT(*) AS nombre_locations
FROM
    locations
GROUP BY
    MONTH(locations.date_debut)
ORDER BY
    mois;