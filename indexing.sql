CREATE USER _indexed_cars_user;

CREATE DATABASE indexed_cars WITH OWNER _indexed_cars_user;

DROP INDEX idx_models;
DROP INDEX idx_year;

CREATE INDEX idx_code
ON car_models (make_code);

CREATE INDEX idx_year
ON car_models (year);

\timing
SELECT DISTINCT make_title FROM car_models WHERE make_code ='LAM'; 

SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R';

SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code ='LAM';

SELECT * FROM car_models WHERE year BETWEEN 2010 AND 2015;

SELECT * FROM car_models WHERE year = 2010;

