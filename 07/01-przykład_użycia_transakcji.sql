-- zaczynamy transakcję
BEGIN;
-- wykonujemy operację na bazie
DELETE FROM heroes WHERE hero_id < 10;

-- tutaj wyłączamy serwer (ręcznie)
-- po ponownym włączeniu dane powinny być bez zmian (usunięcie rekordów zostało cofnięte automatycznie)
SELECT * FROM heroes WHERE hero_id < 10;
