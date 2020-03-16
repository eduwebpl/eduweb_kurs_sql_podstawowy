-- Sprawdzenie jakie dane s? w tabeli
SELECT * FROM heroes;

-- Wprowadzenie nowego rekordu dla nowej postaci
INSERT INTO heroes VALUES ('Brass', 'Comtel', 'M', 'elf', 15, 19, 150, 210, 1, '02-25-1948');

-- Polecenie (PostgreSQL) aby sprawdzi? jaki jest bie??cy format daty
SHOW datestyle;

-- Wprowadzenie nowego rekordu z wykorzystaniem warto?ci domy?lnej w kolumnie 'health'
INSERT INTO heroes VALUES ('Jared', 'Brewster', 'M', 'cz?owiek', 15, 10, DEFAULT, 50, 2, '05-20-1966');

-- Wprowadzenie nowego rekordu ze z?? kolejno?ci? danych
INSERT INTO heroes VALUES ('Gal', 'Krzywonóg', 'K', 'hobbit', 12, DEFAULT, 0, 3);

-- Usuni?cie rekordu (b??dnego - tego, który ma pust? warto?? w kolumnie 'hero_id'
DELETE FROM heroes WHERE hero_id IS NULL;

-- Wprowadzenie poprawionego rekordu
INSERT INTO heroes VALUES ('Gal', 'Krzywonóg', 'K', 'hobbit', 12, 10, DEFAULT, 0, 3, '11-03-1977');

-- Zmiana warto?ci w kolumnie 'mana' dla konkretnego rekordu
UPDATE hereos SET mana = 10 WHERE hero_id = 3;