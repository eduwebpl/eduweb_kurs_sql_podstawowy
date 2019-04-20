-- Utworzenie kopii tabeli 'heroes'
CREATE TABLE heroes_2 AS (SELECT * FROM heroes;)

-- Weryfikacja wyrażenia zwracającego losową wartość liczbową 0,1 lub 2
SELECT ceil(random()*2);

-- Losowa zmiana atrybutu 'strength' dla postaci w skopiowanej tabeli
UPDATE hereos_2 SET strangth = strength * ceil(random()*2);

-- Wybranie rekordów z obu tabel (bez powtórzeń)
SELECT * FROM heroes
UNION
SELECT * FROM heroes_2;

-- Wybranie rekordów z obu tabel (z powtórzeniami)
SELECT * FROM heroes
UNION ALL
SELECT * FROM heroes_2;

-- Wybranie wspólnych rekordów dla obu tabel (mających identyczne atrybuty)
SELECT * FROM heroes
INTERSECT
SELECT * FROM heroes_2;

-- Wybranie rekordów, które znajdują się w tabeli heroes a nie znajdują się w tabeli heroes_2
SELECT * FROM heroes
EXCEPT
SELECT * FROM heroes_2;
