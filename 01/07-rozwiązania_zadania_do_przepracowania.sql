-- Wprowadzenie zestawu rekordów (postaci) jednym zapytaniem

INSERT INTO heroes (hero_id, first_name, last_name, strength, wisdom, mana, gender, race, birthdate)
VALUES (4, 'Olive', 'Ironfist', 32, 8, 120, 'M', 'krasnolud', '1960-02-05'),
	  (5, 'Mika', 'Kleefan', 20, 25, 250, 'K', 'czÅ‚owiek',  '1966-05-20'),
	  (6, 'Fandrel', 'Glowhand', 15, 32, 210, 'M', 'elf', '1820-11-10'),
	  (7, 'Axel', 'deBoom', 35, 5, 190, 'M', 'krasnolud', '1900-01-03'),
	  (8, 'Moira', 'Srebrnolica', 38, 12, 130, 'K', 'krasnolud', '1890-08-05'),
	  (9, 'Brandon', 'Tuk', 22, 12, 0, 'M', 'hobbit', '1970-12-05');


-- Aktualizacja wszystkich bohaterów - zwi?kszenie identyfikatora o 10

UPDATE heroes SET hero_id = hero_id + 10;