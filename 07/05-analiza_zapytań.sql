-- operacja pokazująca plan wykonania podanego zapytania
EXPLAIN SELECT * FROM big_data WHERE id > 1000000;

-- będzie to skan sekwencyjny tabeli i filtr według warunku klauzuli WHERE
-- ze względu na dużą ilość danych, którą baza i tak musi odczytać z dysku 
-- (odczytanie indeksu było by tutaj nawet niepotrzebnym kosztem )

-- zapytanie zmieniamy, tak by operowało na mniejszym zbiorze
EXPLAIN SELECT * FROM big_data WHERE id < 1000;

-- w tej chwili dla takiej niewielkiej grupy rekordów opłaca się planerowi użyć indeksu
-- dlatego teraz będzie do skan indeksu

-- tym razem sprawdzamy plan wykonania zapytania z agregacją danych
EXPLAIN SELECT avg(random_price) FROM big_data WHERE random_price < 200;

-- ponieważ zbiór danych jest niewielki, to także tutaj jest wykorzystywany indeks
-- natomiast nie w bezpośredni sposób

-- analiza planu wykonania wraz z analizą wykonania zapytania:
EXPLAIN ANALYSE SELECT avg(random_price) FROM big_data WHERE random_price < 200;
