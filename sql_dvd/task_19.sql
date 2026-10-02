SELECT
	LEFT(code_postal, 2) AS departement,
    civilite,
    COUNT(id) AS nb_clients
FROM
	clients
GROUP BY
	LEFT(code_postal, 2),
    civilite
ORDER BY
	departement ASC,
    civilite ASC;