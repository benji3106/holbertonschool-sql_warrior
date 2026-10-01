DROP TRIGGER IF EXISTS trg_verifier_places;

DELIMITER $$

CREATE TRIGGER trg_verifier_places
BEFORE INSERT ON deplacements
FOR EACH ROW
BEGIN
    DECLARE v_nb_occupants INT;
    DECLARE v_nb_places INT;

    SELECT COUNT(*) INTO v_nb_occupants
    FROM deplacements
    WHERE vehicule = NEW.vehicule
      AND debut_dep = NEW.debut_dep;

    SELECT nbplaces INTO v_nb_places
    FROM vehicules
    JOIN types_vehicules ON vehicules.type_voiture = types_vehicules.id
    WHERE vehicules.id = NEW.vehicule;

    IF v_nb_occupants >= v_nb_places THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Capacite du vehicule depassee';
    END IF;
END$$

DELIMITER ;