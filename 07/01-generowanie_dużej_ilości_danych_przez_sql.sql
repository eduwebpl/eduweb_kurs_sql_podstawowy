-- wstawiamy ok. 10000 rekordów z losowymi danymi
INSERT INTO big_data (big_number, some_text, random_price)
    SELECT  ROUND(RANDOM() * 10^7),
            random_string,
            CAST(RANDOM() + 1000 AS DECIMAL(10,2))
    FROM random_strings;
-- weryfikujemy ile danych już mamy w tabeli
SELECT count(*) FROM big_data;
-- te dwa zapytania można uruchamiać wielokrotnie, aż do uzyskania zadowalającej ilości danych (ok. 0,5mln)
