-- umożliwiamy modyfikowanie tabeli equipment drugiemu użytkownikowi
GRANT ALL ON TABLE equipment TO other;
-- rozpoczynamy transakcję
BEGIN;
-- ustawiamy bazowy poziom izolacji (read commited)
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
-- upewniamy się jaki jest stan danych (rekordy z niepustą wartością obrony)
SELECT * FROM equipment WHERE armor IS NOT NULL;
-- odpalamy aktualizację rekordów, które mają niedużą wartość obrony. 
-- Wartość zmiany obrony zależna jest od WSZYSTKICH rekordów z niepustą obroną
UPDATE equipment SET armor = armor + (SELECT AVG(armor)/2 FROM equipment WHERE armor IS NOT NULL)
                 WHERE armor < 20;