-- Wprowadzenie paru postaci o przypisanych już wartościach hero_id
INSERT INTO heroes (first_name, last_name, gender, race, strength, wisdom, health, mana, hero_id, birthdate) 
	VALUES ('Johnny', 'Monotonic', 'M', 'człowiek', 23, 33, 250, 390, 10, '1995-11-17');
INSERT INTO heroes (first_name, last_name, gender, race, strength, wisdom, health, mana, hero_id, birthdate) 
	VALUES ('Axel', 'Pulley', 'M', 'człowiek', 19, 21, 170, 230, 11, '1984-12-01');
INSERT INTO heroes (first_name, last_name, gender, race, strength, wisdom, health, mana, hero_id, birthdate) 
	VALUES ('Xena', 'Flawless', 'K', 'człowiek', 31, 10, 320, 90, 12, '1995-09-04');

-- Próba dodania nowej postaci (bez nadanego hero_id) spowoduje błąd
-- Należy zmodyfikować sekwencję tabeli 'heroes' do wartości 10
ALTER SEQUENCE heroes_hero_id_seq RESTART WITH 13;

-- Dodanie nowego rekordu (bez nadanego 'hero_id') tym razem się powiedzie
INSERT INTO heroes (first_name, last_name, gender, race, strength, wisdom, health, mana, birthdate) 
	VALUES ('Frandel', 'Goldleaf', 'K', 'elf', 11, 225, 120, 590, '1895-09-04');

-- Sprawdzenie ostatnio dodanych rekordów
SELECT * FROM heroes ORDER BY hero_id DESC LIMIT 6;
