-- Dodanie kolumny 'birthdate'
ALTER TABLE heroes ADD COLUMN birthdate date;

-- Ustawienie domy?lnej warto?ci dla kolumny 'health'
ALTER TABLE heroes ALTER COLUMN health SET DEFAULT 200;