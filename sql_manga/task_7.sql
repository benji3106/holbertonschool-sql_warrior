SELECT
    num_facture,
    SUM(prix_base * coefficient) AS depenses
FROM
    table_location
JOIN mangas ON table_location.num_manga = mangas.num_manga
JOIN types_location ON table_location.code_type = types_location.code_type
GROUP BY
    num_facture
ORDER BY
    num_facture;