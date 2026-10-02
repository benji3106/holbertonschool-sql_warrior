SELECT
    code_echantillon,
    analyse.id_analyse,
    CASE
        WHEN resultat_analyse.conforme = 1 THEN 'conforme'
        WHEN resultat_analyse.conforme = 0 THEN 'non conforme'
        ELSE 'en attente'
    END AS statut_resultat
FROM
    echantillon
LEFT JOIN analyse ON analyse.id_echantillon = echantillon.id_echantillon
LEFT JOIN resultat_analyse ON resultat_analyse.id_analyse = analyse.id_analyse
ORDER BY
    code_echantillon ASC,
    resultat_analyse.id_resultat ASC;