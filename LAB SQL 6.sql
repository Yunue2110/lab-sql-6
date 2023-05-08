SHOW VARIABLES LIKE 'local_infile';
SET GLOBAL local_infile = true;

LOAD DATA LOCAL INFILE 'Documents/IronHack/WEEK_4/lab-sql-6-master/files_for_lab/films_2020.csv'
INTO TABLE films_2020
CHARACTER SET utf8mb4 
FIELDS TERMINATED BY ',';

SELECT * FROM films_2020; 

SET SQL_SAFE_UPDATES = 0;
UPDATE films_2020
SET rental_duration = 3 , rental_rate = 2.99 , replacement_cost = 8.99;

SELECT * FROM films_2020;

SET SQL_SAFE_UPDATES =1;

