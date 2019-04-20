-- Dodanie kolumn hero_id i birthdate do widoku 'tank_heroes'
CREATE OR REPLACE VIEW tank_heroes AS
    SELECT hero_id,
	   first_name,
     	   last_name,
    	   health,
	   birthdate
    FROM heroes
    WHERE (heroes.health > 200)
    WITH CASCADED CHECK OPTION;

-- Połączenie innego użytkownika (other)                   | Połączenie głównego użytkownika (właściciel tabeli heroes) 

-- Próba przejrzenia tabeli heroes (nie powiedzie się)     |
-- (do której 'other' nie ma uprawnień)			   |
SELECT * FROM heroes;

-- Próba przejrzenia widoku tank_heroes			   | 
-- (jeśli nie były nadane uprawnienia - nie powiedzie się) |
SELECT * FROM tank_heroes;			       	-- | -- Nadanie uprawnień do odczytu widoku dla użytkownika 'other'
							   | GRANT SELECT ON tank_heroes TO other;
-- Próba zapisu do widoku tank_heroes (nie powiedzie się)  |
INSERT INTO tank_heroes (first_name, last_name,		-- |
			 health, birthdate)		-- |
    VALUES ('Dr', 'Max', 500, '03-23-1955');		-- | -- Nadanie uprawnień do zapisu do widoku dla użytkownika 'other'
							   | GRANT INSERT ON tank_heroes TO other;
-- Teraz zapis powinien się udać			-- |

-- Próba aktualizacji roku urodzin postaci przez widok  -- |
-- (powinna się nie udać)				-- |
UPDATE tank_heroes 					-- | -- Nadanie uprawnień do aktualizacji widoku 'tank_heroes'
   SET birthdate = birthdate - CAST('1-0' AS INTERVAL); -- | -- dla użytkownika 'other'
							   | GRANT UPDATE ON tank_heroes TO other;
-- Teraz aktualizacja powinna się powieść bez problemu  -- |


