-- Stworzenie widoku wyświetlającego elementy zbroi bohaterów
CREATE VIEW armor_equipment AS
    SELECT eq.*
    FROM equipment eq
    JOIN heroes h ON h.hero_id = eq.hero_id
    WHERE armor IS NOT NULL;

-- Próba dodania rekordu przez powyższy widok (nie uda się, bo dwie tabele w widoku)
INSERT INTO armor_equipment (equipment_name, equipment_type, armor, durability)
    VALUES ('rękawice', 'uzbrojenie', 10, 5);

-- Przerobiony widok, zapisywalny
CREATE OR REPLACE VIEW armor_equipment AS
    SELECT eq.*
    FROM equipment eq
    WHERE armor IS NOT NULL;
