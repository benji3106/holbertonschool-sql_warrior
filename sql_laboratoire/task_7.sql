SELECT
    nom_site,
    site.ville,
    type_site,
    client.nom AS client
FROM
	client
JOIN site ON site.id_client = client.id_client
ORDER BY 
	client.nom ASC,
    nom_site ASC;