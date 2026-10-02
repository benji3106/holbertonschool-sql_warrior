WITH echantillons_par_client AS (
    SELECT
        client.id_client,
        client.nom AS nom_client,
        COUNT(echantillon.id_echantillon) AS nombre_echantillons
    FROM
        client
    LEFT JOIN site ON site.id_client = client.id_client
    LEFT JOIN prelevement ON prelevement.id_site = site.id_site
    LEFT JOIN echantillon ON echantillon.id_prelevement = prelevement.id_prelevement
    GROUP BY
        client.id_client,
        client.nom
)
SELECT
    nom_client,
    nombre_echantillons
FROM
    echantillons_par_client
WHERE
    nombre_echantillons >= 1
ORDER BY
    id_client ASC;