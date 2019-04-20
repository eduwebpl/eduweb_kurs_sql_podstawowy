-- Zapytanie zliczające elementy zbroi w ekwipunku bohaterów
SELECT equipment_type, COUNT(equipment_id) as equipment_type_count
FROM equipment
GROUP BY equipment_type;

-- Zapytanie agregujące przedmioty dla każdego studenta (w postaci ciągu znaków oddzielonych przecinkami)
SELECT student, string_agg(przedmioty)
FROM przedmioty_oceny
GROUP BY student;
