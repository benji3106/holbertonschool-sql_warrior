SELECT
    code_echantillon,
    analyse.id_analyse,
    valeur_mesuree,
    conforme
FROM
    echantillon
LEFT JOIN analyse ON analyse.id_echantillon = echantillon.id_echantillon
LEFT JOIN resultat_analyse ON resultat_analyse.id_analyse = analyse.id_analyse
ORDER BY
    code_echantillon ASC,
    resultat_analyse.id_resultat ASC;