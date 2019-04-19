-- Wybranie wszystkich rekordów z tabeli
SELECT * FROM heroes;

-- Wybranie tylko niektórych danych (kolumn) z tabeli
SELECT first_name, last_name, race, health, mana FROM heroes;

-- Wybieranie danych z przetwarzaniem - proste operacje na kolumnie 'hero_id'
SELECT hero_id, hero_id * 2, 4 * 4 FROM heroes;

-- Szybkie obliczenia z u?yciem SQL-a (bez odno?nika do tabeli - FROM)
SELECT sqrt(3*power(12,2));

-- U?ycie funkcji do formatowania wybieranych danych
SELECT CONCAT(first_name, ' ', last_name) AS hero, race, gender FROM heroes;

-- Proste filtrowanie do wybrania konkretnego rekordu (postaci)
SELECT CONCAT(first_name, ' ', last_name) AS hero, race, gender
FROM heroes
WHERE hero_id = 14;

-- Filtrowanie danych z wykorzystaniem operacji logicznych
SELECT CONCAT(first_name, ' ', last_name) AS hero, race, gender
FROM heroes
WHERE (NOT race = 'krasnolud') OR wisdom < 10;

-- Sortowanie danych przy wybieraniu, wed?ug paru kolumn
SELECT * FROM heroes ORDER BY health ASC, mana DESC;