BEGIN;
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
-- wprowadzamy małą poprawkę do wartości obrony
UPDATE equipment SET armor = armor - 3 WHERE armor IS NOT NULL;
-- sprawdzamy jak się ta zmiana zaaplikowała
SELECT * FROM equipment WHERE armor IS NOT NULL;