-- Wybieranie danych o ekwipunku bohaterów (z dwóch połączonych tabel)
SELECT first_name, last_name, equipment_name, equipment_type
FROM hereos
JOIN equipment ON heroes.hero_id = equipment.hero_id
ORDER BY last_name;

-- Wybranie wszystkich elementów ekwipunku, nawet jeśli nie mają przypisania do żadnej postaci
SELECT first_name, last_name, equipment_name, equipment_type
FROM hereos RIGHT JOIN equipment ON heroes.hero_id = equipment.hero_id
ORDER BY last_name;
