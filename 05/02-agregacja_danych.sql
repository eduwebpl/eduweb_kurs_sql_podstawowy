-- Zapytanie wyświetlające ilości bohaterów per rasa
SELECT race, COUNT(hero_id) AS hero_count
FROM heroes
GROUP BY race;

-- Zapytanie dodatkowo grupujące po płci (ilość bohaterów dla każdej kombinacji rasy i płci)
SELECT race, gender, COUNT(hero_id) AS hero_count
FROM heroes
GROUP BY race, gender
ORDER BY race;
