-- Wybranie wszystkich rekordów z bazy
SELECT * FROM heroes;

-- Wybranie tylko mężczyzn posiadających więcej niż 200 many
SELECT * FROM heroes
WHERE gender = 'M' AND mana > 200;

-- Wybranie tylko elfów i krasnoludów (z użyciem operatora IN)
SELECT * FROM heroes
WHERE race IN ('elf', 'krasnolud');

-- Alternatywne wybranie tylko elfów i krasnoludów (z użyciem operatora OR)
SELECT * FROM heroes
WHERE race = 'elf' OR race = 'krasnolud';

-- Wybranie wszystkich postaci, których nazwisko kończy się na 'an'
SELECT * FROM heroes
WHERE last_name LIKE '%an';

-- Wybranie bohaterów, których siła jest między 10 a 20
SELECT * FROM heroes
WHERE strength BETWEEN 10 AND 20;

-- Wybranie wszystkich rekordów ale z użyciem klauzli WHERE
SELECT * FROM heroes WHERE True;
