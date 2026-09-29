SELECT
    nom_complet,
    COUNT(*) AS nombre_locations
FROM
    utilisateurs
JOIN locations ON locations.utilisateur_id = utilisateurs.id
GROUP BY
    utilisateurs.id
ORDER BY
    utilisateurs.id ASC;