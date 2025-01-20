-- task 1
SELECT COUNT(*)
FROM car;

-- task 2
SELECT COUNT(*)
FROM carowner;

-- task 3
SELECT ROUND(AVG(yearmodel))
FROM car;

-- task 4
SELECT MIN(yearmodel), MAX(yearmodel)
FROM car;

-- task 5
SELECT
	brand,
    COUNT(*) as car_count
FROM
	car
GROUP BY
	brand;

-- task 6
SELECT
	owner.idowner,
    owner.firstname,
    owner.lastname,
    GROUP_CONCAT(car.brand, ' ', car.model ORDER BY car.brand, car.model) AS 'cars of the person'
FROM
	owner
JOIN
	carowner ON owner.idowner = carowner.idowner
JOIN
	car ON carowner.idcar = car.idcar
GROUP BY
	owner.idowner, owner.firstname, owner.lastname;
