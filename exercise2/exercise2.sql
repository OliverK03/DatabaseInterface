-- task 1
SELECT *
FROM owner;

-- task 2
SELECT firstname, lastname
FROM owner;

-- task 3
SELECT * 
FROM owner
WHERE streetaddress="Kotkantie 1";

-- task 4
SELECT * 
FROM car
WHERE yearmodel > 2017;

-- task 5
SELECT *
FROM car
WHERE yearmodel >= 2017 && yearmodel <= 2019;

-- task 6
SELECT * 
FROM car
ORDER BY yearmodel ASC;

-- task 7
SELECT *
FROM car
ORDER BY yearmodel DESC;

-- task 8
SELECT *
FROM owner
WHERE lastname LIKE 'S%'