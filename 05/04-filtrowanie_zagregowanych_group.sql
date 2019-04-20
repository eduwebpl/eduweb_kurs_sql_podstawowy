-- Wyświetlenie tych ras, dla których średnia siła bohaterów jest większa niż 15
SELECT race, CAST(AVG(strength) AS NUMERIC(4,2))
FROM heroes
GROUP BY race
HAVING AVG(strength) > 15;
