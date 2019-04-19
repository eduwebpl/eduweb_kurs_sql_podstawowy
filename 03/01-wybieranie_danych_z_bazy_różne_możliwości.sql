-- Wybieranie wszystkich rekordów z tabeli 'heroes'
SELECT * FROM heroes;

-- Wybieranie tylko określonych danych (kolumn) z tabeli 'heroes'
SELECT first_name, last_name, gender, race FROM heroes;

-- Dodatkowa kolumna obliczeniowa w zapytaniu o dane z tabeli 'heroes'
SELECT first_name, last_name, gender, race, 3+7 FROM heroes;

-- Użycie SELECT-a jako kalkulatora, bez odwołania do tabeli
SELECT 3*40 / 5.0;

-- Użycie funkcji w zapytaniu SELECT, do wyświetlenia pełnej nazwy bohatera
SELECT CONCAT(first_name, ' ', last_name), gender, race FROM heroes;

-- Nazwanie kolumny z połączonymi danymi przez użycie aliasu do kolumny
SELECT CONCAT(first_name, ' ', last_name) AS hero, gender, race FROM heroes;

-- Bardziej przyjazne wyświetlenie informacji o płci bohaterów z użyciem wyrażenia CASE
SELECT CONCAT(first_name, ' ', last_name) AS hero, 
       CASE WHEN gender = 'M' THEN 'Mężczyzna'
	    WHEN gender = 'K' THEN 'Kobieta' END, 
       race 
FROM heroes;

-- Wyświetlenie listy ras (z kolumny 'race') -> na razie wszystkie rasy zapisane w tabeli z powtórzeniami
SELECT race FROM heroes;

-- Wyświetlenie listy unikalnych ras w tabeli
SELECT DISTINCT race FROM heroes;
