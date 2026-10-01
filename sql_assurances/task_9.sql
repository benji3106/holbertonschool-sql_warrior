DROP FUNCTION IF EXISTS date_fin_contrat;

CREATE FUNCTION date_fin_contrat(p_id_contrat INT)
RETURNS DATE
READS SQL DATA
RETURN (
    SELECT DATE(DATE_ADD(date_effet, INTERVAL duree MONTH))
    FROM contrats
    WHERE id = p_id_contrat
);