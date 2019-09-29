SELECT * FROM big_data WHERE big_number BETWEEN 100000 AND 140000;

CREATE INDEX big_data_big_number_idx ON big_data (big_number);

SELECT * FROM big_data WHERE big_number BETWEEN 100000 AND 140000;