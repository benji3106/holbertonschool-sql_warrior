SELECT DISTINCT
    nom_parametre,
    unite,
    seuil_reglementaire
FROM
    resultat_analyse
JOIN analyse ON analyse.id_analyse = resultat_analyse.id_analyse
JOIN methode_analyse ON methode_analyse.id_methode = analyse.id_methode
JOIN parametre_analyse ON parametre_analyse.id_parametre = methode_analyse.id_parametre
WHERE
    resultat_analyse.conforme = 0;