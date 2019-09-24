-- BEGIN;
-- SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
--   wstawiamy nowy rekord z wartością obrony zależną od modyfikacji w równoległej transakcji użytkownika postgres 
--   średnia z wartości obrony dla bohaterów z hero_id <= 4 
--   (a w równoległej transakcji wstawiamy rekord powiązany z hero_id = 2)
-- INSERT INTO equipment (equipment_name, equipment_type, damage, amount, hero_id)
--        SELECT 'łuk', 'broń', CAST(AVG(damage) AS integer), 1, 5 FROM equipment WHERE hero_id <= 4;
--   sprawdzamy jaka wartość została wyliczona
-- SELECT * FROM equipment WHERE damage IS NOT NULL;

-- próbujemy zatwierdzić transakcję, ale wystąpi błąd serializacji
COMMIT;