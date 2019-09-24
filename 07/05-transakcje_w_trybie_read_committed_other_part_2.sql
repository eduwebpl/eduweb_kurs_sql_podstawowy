--   rozpoczynamy transakcję
-- BEGIN;
--   ustawiamy bazowy poziom izolacji (read commited)
-- SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
--   upewniamy się jaki jest stan danych (rekordy z niepustą wartością obrony)
-- SELECT * FROM equipment WHERE armor IS NOT NULL;
--   odpalamy aktualizację rekordów, które mają dużą wartość obrony
--   w tym momencie baza będzie czekała na zakończenie pierwszej transakcji (użytkownika postgres),
--   która modyfikuje te same rekordy co poniższe zapytanie
-- UPDATE equipment SET armor = armor + 3 WHERE armor > 20;

-- w tej samej transakcji (z części pierwszej) weryfikujemy zmiany wprowadzone przez UPDATE 
-- (zmiany z transakcji użytkownika postgres są też tutaj widoczne)
SELECT * FROM equipment WHERE armor IS NOT NULL;
-- cofamy zmiany wprowadzone przez tą transakcję
ROLLBACK;
-- teraz widoczne są tylko zmiany z transakcji użytkownika postgres
SELECT * FROM equipment WHERE armor IS NOT NULL;