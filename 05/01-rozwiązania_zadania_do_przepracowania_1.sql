-- Stworzenie prostej tabeli ocen studentów
CREATE TABLE przedmioty_oceny (
	student varchar,
	przedmiot varchar,
	ocena int
);

-- Wstawienie przykładowych danych do tabeli
INSERT INTO przedmioty_oceny
   VALUES ('Jola', 'bazy danych', 4),
	  ('Franek', 'SQL', 3),
	  ('Jola', 'SQL', 5),
	  ('Witek', 'PL/SQL', 3),
	  ('Jola', 'PL/SQL', 3),
	  ('Witek', 'SQL', 4),
	  ('Witek', 'PL/SQL', 5);

-- Wyświetlenie zawartości stworzonej tabeli
SELECT * FROM przedmioty_oceny;

-- Zapytanie obliczające średnie z ocen dla poszczególnych przedmiotów
SELECT przedmiot, avg(ocena) AS srednia_dla_przedmiotu
FROM przedmioty_oceny
GROUP BY przedmiot;

-- Wersja z lepiej wyglądającą wartością średniej (zaokrągloną do 2-ch miejsc po przecinku)
SELECT przedmiot, CAST(avg(ocena), NUMERIC(4,2)) AS srednia_dla_przedmiotu
FROM przedmioty_oceny
GROUP BY przedmiot;
