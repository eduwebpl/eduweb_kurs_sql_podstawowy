-- Dodanie ograniczenia CHECK, które zezwala na użycie tylko liter 'M' i 'K' w kolumnie 'gender'
ALTER TABLE heroes ADD CHECK (gender IN ('M', 'K'));

-- Próba ustawienia innej wartości powoduje błąd
UPDATE heroes SET gender = 'Z' WHERE hero_id = 1;

-- Przypisanie wartości NULL powiedzie się dla kolumny 'strength'
UPDATE heroes SET strength = NULL WHERE hero_id = 1;

-- Wracamy do oryginalnej wartości pola
UPDATE heroes SET strength = 15 WHERE hero_id = 1;

-- Ustawienie zabezpieczenia przed pustymi wartościami
ALTER TABLE heroes ALTER COLUMN strength SET NOT NULL;

-- Teraz przypisanie wartości NULL spowoduje błąd
UPDATE heroes SET strength = NULL WHERE hero_id = 1;
