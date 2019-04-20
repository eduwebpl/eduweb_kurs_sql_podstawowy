-- Stworzenie widoku wyświetlającego elfów i krasnoludów posiadających więcej niż jeden element ekwpunku
CREATE VIEW heroes_equipment_count AS
    SELECT first_name, last_name, race, COUNT(equipment_id)
    FROM heroes h
    JOIN equipment e ON h.hero_id = e.hero_id
    WHERE race IN ('elf', 'krasnolud')
    GROUP BY first_name, last_name, race
    HAVING COUNT(equipment_id) > 1;

-- Zapytanie wykorzystujące powyższy widok, do wyświetlenia tylko elfów posiadających więcej niż jeden element ekwipunku
SELECT * FROM heroes_equipment_count
WHERE race = 'elf';

-- Zapytanie łączące widok i tabelę w celu wyświetlenia dodatkowych informacji (gender) nie zawartych w widoku
SELECT hec.*, h.gender
FROM heroes_equipment_count AS hec
JOIN heroes AS h ON hec.first_name = h.first_name AND hec.last_name = h.last_name
WHERE hec.race = 'elf';
