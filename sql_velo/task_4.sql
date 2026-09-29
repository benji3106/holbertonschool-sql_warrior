SELECT
    id,
    nom_complet,
    email,
    telephone,
    mot_de_passe,
    date_creation
FROM
    utilisateurs
WHERE
    nom_complet LIKE 'J%';