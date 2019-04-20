-- Stworzenie widoku bohaterów z wysokim zdrowiem
CREATE VIEW tank_heroes AS 
    SELECT hero_id,
	   first_name,
	   last_name,
	   health
    FROM heroes
    WHERE health > 200;

-- Złączenie widoku 'tank_heroes' z danymi o ekwipunku (tabelą 'equipment')
SELECT * 
FROM tank_heroes th
JOIN equipment e ON th.hero_id = e.hero_id;

-- Rozszerzenie powyższego zapytania o wyświetlanie bohaterów, którzy nie mają ekwipunku
SELECT th.*, e.equipment_name 
FROM tank_heroes th
LEFT JOIN equipment e ON th.hero_id = e.hero_id;

-- Zapytanie zliczające ekwipunek dla każdej postaci z widoku
SELECT th.*, COUNT(e.equipment_id)
FROM tank_heroes th
LEFT JOIN equipment e ON th.hero_id = e.hero_id
GROUP BY th.hero_id, th.first_name, th.last_name, th.health;

-- Rozszerzenie zapytania zliczającego o wyświetlanie tekstu informującego o posiadaniu ekwipunku lub nie
SELECT th.*,
       CASE WHEN COUNT(e.equipment_id) > 0 THEN 'equipped'
	    ELSE 'unequipped'
       	    END AS is_equipped
FROM tank_heroes th
LEFT JOIN equipment e ON th.hero_id = e.hero_id
GROUP BY th.hero_id, th.first_name, th.last_name, th.health;
