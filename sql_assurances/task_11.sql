DROP PROCEDURE IF EXISTS ajouter_employe;

CREATE PROCEDURE ajouter_employe(
    IN p_nom VARCHAR(50),
    IN p_prenom VARCHAR(50),
    IN p_num_permis VARCHAR(12)
)
INSERT INTO employes (id, nom, prenom, num_permis)
SELECT MAX(id) + 1, UPPER(p_nom), p_prenom, p_num_permis
FROM employes;