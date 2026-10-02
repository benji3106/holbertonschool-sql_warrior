SELECT
    client.nom AS nom_client,
    nom_site,
    code_echantillon,
    nom_parametre,
    valeur_mesuree,
    conforme
FROM
    resultat_analyse
JOIN analyse ON analyse.id_analyse = resultat_analyse.id_analyse
JOIN echantillon ON echantillon.id_echantillon = analyse.id_echantillon
JOIN prelevement ON prelevement.id_prelevement = echantillon.id_prelevement
JOIN site ON site.id_site = prelevement.id_site
JOIN client ON client.id_client = site.id_client
JOIN methode_analyse ON methode_analyse.id_methode = analyse.id_methode
JOIN parametre_analyse ON parametre_analyse.id_parametre = methode_analyse.id_parametre
ORDER BY
    client.nom ASC,
    code_echantillon ASC,
    resultat_analyse.id_resultat ASC;