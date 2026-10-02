SELECT
    client.nom,
    COUNT(echantillon.id_echantillon) AS nombre_echantillons
FROM
    client
LEFT JOIN demande_analyse ON demande_analyse.id_client = client.id_client
LEFT JOIN prelevement ON prelevement.id_demande = demande_analyse.id_demande
LEFT JOIN echantillon ON echantillon.id_prelevement = prelevement.id_prelevement
GROUP BY
    client.id_client,
    client.nom
ORDER BY
    nombre_echantillons DESC,
    client.nom ASC;