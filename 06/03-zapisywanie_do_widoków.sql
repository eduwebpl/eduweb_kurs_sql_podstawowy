-- Zapytanie zapisujące dane z wykorzystaniem widoku
INSERT INTO tank_heroes (first_name, last_name, health)
	VALUES ('Super', 'Tank', 410);

-- Weryfikacja zapisanego rekordu
SELECT * FROM heroes;

-- Próba zapisania danych do kolumny nie zawartej w widoku (powinna wywołać błąd)
INSERT INTO tank_heroes (first_name, last_name, health, gender)
	VALUES ('Super', 'Tank', 410, 'M');

-- Próba zapisania danych spoza warunku wprowadzonego przez widok (health > 200)
-- Ta próba powiedzie się, jednak zapisane dane nie będą zwracane przez widok (poza zakresem)
INSERT INTO tank_heroes (first_name, last_name, health)
	VALUES ('Mistery', 'Girl', 110);

-- Weryfikacja zapisanego rekordu
SELECT * FROM heroes; -- nowa postać widoczna na końcu zestawu danych
SELECT * FROM tank_heroes; -- nowej postaci nie ma w wynikach

-- Modyfikacja widoku aby weryfikował także swój warunek
CREATE OR REPLACE VIEW tank_heroes AS
    SELECT heroes.first_name,
      	   heroes.last_name,
      	   heroes.health
    FROM heroes
    WHERE (heroes.health > 200)
    WITH CHECK OPTION; -- domyślna wartość to: WITH CASCADED CHECK OPTION

-- Próba zapisania danych spoza warunku wprowadzonego przez widok (health > 200)
-- Tym razem próba nie powiedzie się gdyż CHECK OPTION nie pozwoli zapisać danych spoza warunku widoku
INSERT INTO tank_heroes (first_name, last_name, health)
	VALUES ('Mistery', 'Girl', 110);
