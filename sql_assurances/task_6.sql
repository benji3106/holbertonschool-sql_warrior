SELECT
    employe,
    vehicule,
    lieu
FROM
    deplacements
WHERE
    lieu = 'Nice'
ORDER BY
    employe;