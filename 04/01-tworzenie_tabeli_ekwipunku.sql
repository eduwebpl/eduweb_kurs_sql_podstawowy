-- Utworzenie nowej tabeli ekwipunku postaci
CREATE TABLE equipment (
    equipment_id int,
    equipment_name varchar,
    equipment_type varchar,
    armor int,
    damage int,
    durability int,
    amount int
);

-- Utworzenie kolumny łączącej ekwipunek i konkretnego bohatera
ALTER TABLE equipment ADD COLUMN hero_id int;

-- Stworzenie ograniczenia referencyjnego (klucza obcego) na kolunie 'hero_id'
ALTER TABLE equipment ADD FOREIGN KEY (hero_id) REFERENCES heroes (hero_id);

-- Dopisanie pierwszego elementu ekwipunku wraz z przypisaniem do postaci z tabeli 'heroes'
INSERT INTO equipment VALUES (1, 'szyszak', 'uzbrojenie', 5, NULL, NULL, 1, 1);

-- Próba dopisania elementu ekwipunku do nieistniejącej postaci (wygeneruje bład)
INSERT INTO equipment VALUES (1, 'szyszak', 'uzbrojenie', 5, NULL, NULL, 1, 99);
