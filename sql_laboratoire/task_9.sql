SELECT
    id_analyse,
    code_echantillon,
    nom_methode,
    analyse.statut
FROM
	echantillon
JOIN analyse ON analyse.id_echantillon = echantillon.id_echantillon
JOIN methode_analyse ON methode_analyse.id_methode = analyse.id_methode
ORDER BY
	id_analyse ASC;