-- Zmiana typu kolumny 'gold' na liczbę dziesiętną z dwoma miejscami po przecinku
ALTER TABLE heroes ALTER COLUMN gold TYPE DECIMAL(10,2);

-- Przypisanie paru bohaterów jako dowódców drużyn
UPDATE heroes SET is_teamleader = True WHERE hero_id IN (11, 12, 13);

-- Wyświetlenie tylko dowódców drużyn
SELECT first_name, last_name, is_teamleader FROM heroes WHERE is_teamleader;
