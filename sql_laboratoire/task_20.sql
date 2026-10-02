SELECT
    analyse.id_analyse,
    code_echantillon,
    TIMESTAMPDIFF(MINUTE, analyse.date_debut, analyse.date_fin) AS duree_minutes,
    RANK() OVER (
        ORDER BY TIMESTAMPDIFF(MINUTE, analyse.date_debut, analyse.date_fin) DESC
    ) AS rang_duree
FROM
    analyse
JOIN echantillon ON echantillon.id_echantillon = analyse.id_echantillon
WHERE
    analyse.statut = 'terminee'
ORDER BY
    rang_duree ASC;