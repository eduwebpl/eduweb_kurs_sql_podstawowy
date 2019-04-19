-- Kolumna mająca ograniczenie NOT NULL nie może mieć pustych pól
-- Dodanie nowej kolumny NOT NULL używając domyślnych wartości (DEFAULT) do wypełnienia jej danymi

ALTER TABLE heroes ADD COLUMN is_teamleader boolean DEFAULT False NOT NULL;

-- Sprawdzenie wstawionych wartości do nowej kolumny
SELECT is_teamleader, hero_id FROM heroes;

-- Usunięcie nowej kolumny
ALTER TABLE heroes DROP COLUMN is_teamleader;

-- Dodanie nowej kolumny (bez ograniczenia NOT NULL)
ALTER TABLE heroes ADD COLUMN is_teamleader boolean DEFAULT False;

-- Sprawdzenie wartości w nowej kolumnie
SELECT is_teamleader, hero_id FROM heroes;

-- Wypełnienie kolumny losowymi wartościami
-- (Potrzebne rzutowanie żeby z wartości ułamkowej z funkcji RANDOM() otrzymać wartość logiczną)
UPDATE heroes SET is_teamleader = CAST(CAST(ROUND(RANDOM()) AS int) AS boolean);

-- Ustawienie ograniczenia NOT NULL na nowej kolumnie
ALTER TABLE heroes ALTER COLUMN is_teamleader SET NOT NULL;

-- Próba ustawienia wartości pustej (NULL) w nowej kolumnie (powinna się nie powieść i spowodować błąd)
UPDATE heroes SET is_teamleader = NULL;

-- Dodanie nowej kolumny
ALTER TABLE heroes ADD COLUMN gold int DEFAULT 0 NOT NULL;
