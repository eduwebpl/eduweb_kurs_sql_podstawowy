-- najpierw zapytanie na dużej ilości danych 
SELECT avg(random_price) FROM big_data; -- czas wykonania zapytania, na przykład ok. 200 ms

-- ograniczamy selekcję warunkiem WHERE
SELECT avg(random_price) FROM big_data WHERE random_price < 200; -- czas wykonania zapytania, np. ok. 170 ms 

-- zakładamy indeks na kolumnę po której jest filtrowanie (warunek WHERE)
CREATE INDEX big_data_random_price_idx ON big_data (random_price);

-- jeszcze raz zapytanie z selekcją (tym razem przyspieszone)
SELECT avg(random_price) FROM big_data WHERE random_price < 200; -- czas wykonania zapytania, np. ok. 130 ms 
