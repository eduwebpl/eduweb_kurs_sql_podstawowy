-- Kwerenda wybierająca dane zgrupowane i przefiltrowane z dużej tablicy ('big_data')
SELECT count(big_number), array_agg(some_text), CAST(AVG(random_price) AS NUMERIC(10,2))
FROM big_data
GROUP BY big_number
HAVING AVG(random_price) > 300 AND COUNT(big_number) > 2;

-- Stworzenie widoku na bazie powyższej kwerendy
CREATE VIEW big_view AS (
    SELECT count(big_number), array_agg(some_text), CAST(AVG(random_price) AS NUMERIC(10,2))
    FROM big_data
    GROUP BY big_number
    HAVING AVG(random_price) > 300 AND COUNT(big_number) > 2
);

-- Wybranie danych z widoku (powinno potrwać parę sekund - przy kilkuset rekordach)
SELECT * FROM big_view;

-- Usuwamy widok 'big_view'
DROP VIEW big_view;

-- Po to aby stworzyć nowy, zmaterializowany widok
CREATE MATERIALIZED VIEW big_view AS (
    SELECT count(big_number), array_agg(some_text), CAST(AVG(random_price) AS NUMERIC(10,2))
    FROM big_data
    GROUP BY big_number
    HAVING AVG(random_price) > 300 AND COUNT(big_number) > 2
);

-- Odświeżenie widoku zmaterializowanego (aktualizacja danych)
REFRESH MATERIALIZED VIEW big_view;

-- Wybranie danych ze zmaterializowane widoku (dużo szybciej niż ze zwykłego)
SELECT * FROM big_view WHERE avg > 500;
