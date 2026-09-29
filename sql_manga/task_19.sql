SELECT m.num_manga, m.titre, m.prix_base, g.signification
FROM mangas m
JOIN genres_manga g ON g.code_genre = m.code_genre
WHERE g.signification = 'Horreur';
UPDATE mangas
SET prix_base = prix_base + 0.20
WHERE code_genre = 9;
SELECT m.num_manga, m.titre, m.prix_base, g.signification
FROM mangas m
JOIN genres_manga g ON g.code_genre = m.code_genre
WHERE g.signification = 'Horreur';