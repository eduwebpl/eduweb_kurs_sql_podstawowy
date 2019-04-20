-- Zapytanie wyświetlające zdublowane elementy ekwipunku
SELECT equipment_name, COUNT(equipment_name)
FROM equipment
GROUP BY equipment_name
HAVING COUNT(equipment_name) > 1;
