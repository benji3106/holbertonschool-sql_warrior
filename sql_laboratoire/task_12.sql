SELECT
    CONCAT_WS(' ', employe.prenom, employe.nom) AS analyste,
    COUNT(analyse.id_analyse) AS nombre_analyses
FROM
    employe
JOIN role_employe ON role_employe.id_role = employe.id_role
LEFT JOIN analyse ON analyse.id_analyste = employe.id_employe
WHERE
    role_employe.libelle_role = 'analyste'
GROUP BY
    employe.id_employe,
    employe.prenom,
    employe.nom
ORDER BY
    nombre_analyses DESC,
    employe.id_employe ASC;