DROP FUNCTION IF EXISTS vehicule_est_assure;

CREATE FUNCTION vehicule_est_assure(p_id_vehicule INT)
RETURNS INT
READS SQL DATA
RETURN EXISTS (
    SELECT 1
    FROM contrats
    WHERE vehicule = p_id_vehicule
      AND CURDATE() BETWEEN date_effet AND date_fin_contrat(id)
);