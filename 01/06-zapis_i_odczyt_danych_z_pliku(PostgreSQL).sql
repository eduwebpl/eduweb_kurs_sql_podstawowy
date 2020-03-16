-- Przed wykonaniem tych zapyta? nale?y stworzy? katalog Temp na dysku C:

-- Zrzucenie do pliku zawarto?ci tabeli 'heroes' w formacie CSV
COPY heroes TO 'C:/Temp/heroes.csv' WITH CSV;

-- Zwyk?e wyczyszczenie danych z tabeli 'heroes'
DELETE FROM heroes;

-- Szybkie wyczyszczenie danych z tabeli 'heroes' 
TRUNCATE heroes;

-- Wczytanie danych z pliku do tabeli 'heroes'
COPY heroes FROM 'C:/Temp/heroes.csv' WITH CSV;