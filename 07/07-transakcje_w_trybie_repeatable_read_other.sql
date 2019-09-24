BEGIN;
SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
-- wprowadzamy małą poprawkę do wartości obrony
-- ale tutaj transakcja zatrzyma się, czekając na zakończenie się transakcji użytkownika postgres
UPDATE equipment SET armor = armor - 5 WHERE armor IS NOT NULL;

--po zakończeniu się transakcji użytkownika postgres tutaj nastąpi błąd (serializacji)