SELECT
    nom_complet,
    SUM(montant) AS total_depense
FROM
    utilisateurs
JOIN locations ON utilisateurs.id = locations.utilisateur_id
JOIN paiements ON locations.id = paiements.location_id
GROUP BY
    utilisateurs.id
HAVING
    total_depense > 10
ORDER BY
    utilisateurs.id;