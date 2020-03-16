-- Tworzenie pustej tabeli
CREATE TABLE heroes ();

-- Usuwanie tabeli
DROP TABLE heroes;

-- Tworzenie normalnej tabeli z kolumnami
CREATE TABLE heroes (
    first_name varchar,
    last_name varchar,
    gender char[1],
    race varchar,
    strength int,
    wisdom int,
    health int,
    mana int
);

-- Dodanie kolumny identyfikatora wiersza
ALTER TABLE heroes ADD COLUMN hero_id int;

-- Poprawa kolumny gender -> zmiana typu z jednoelementowej listy na pojedynczy znak
ALTER TABLE heroes ALTER COLUMN gender TYPE char(1);
