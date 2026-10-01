SELECT
    employes.id,
    nom,
    prenom
FROM
    employes
LEFT JOIN deplacements ON deplacements.employe = employes.id
WHERE
    deplacements.employe IS NULL
ORDER BY
    employes.id;