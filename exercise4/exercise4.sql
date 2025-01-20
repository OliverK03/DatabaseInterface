-- task 1
UPDATE car
SET yearmodel = 2019
WHERE idcar = 7;

-- task 2
UPDATE car
SET model = 'A5'
WHERE idcar = 1;

-- task 3
INSERT INTO car (brand, model, yearmodel)
VALUES('VW', 'GOLF', 2015);

-- task 4
DELETE
FROM car
WHERE idcar=10;

-- task 5
DELIMITER //
CREATE PROCEDURE min_year(IN syear INT)
BEGIN
SELECT * FROM car WHERE yearmodel > syear;
END //
DELIMITER ;

CALL min_year(2016)

