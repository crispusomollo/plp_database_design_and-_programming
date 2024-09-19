-- Part 1: Basic Aggregate Functions

-- question 1.1
SELECT COUNT(*) AS total_admissions FROM admissions;

-- question 1.2
SELECT 
    AVG(DATEDIFF(discharge_date, admission_date)) AS average_length_of_stay
FROM
    admissions, discharges;


-- Part 2: Grouping Data

-- question 2.1
SELECT 
    primary_diagnosis, COUNT(*) AS total_admissions
FROM
    admissions
GROUP BY primary_diagnosis;

-- question 2.2
SELECT 
    service,
    AVG(DATEDIFF(discharge_date, admission_date)) AS average_length_of_stay
FROM
    admissions, discharges
GROUP BY service;

-- question 2.3
SELECT 
    discharge_disposition, COUNT(*) AS total_discharges
FROM
    discharges
GROUP BY discharge_disposition;


-- Part 3: Combining Aggregates and Filtering

-- question 3.1
SELECT 
    service, COUNT(*) AS total_admissions
FROM
    admissions
GROUP BY service
HAVING COUNT(*) > 5;

-- question 3.2
SELECT 
    AVG(DATEDIFF(discharge_date, admission_date)) AS average_length_of_stay
FROM
    admissions, discharges
WHERE
    primary_diagnosis = 'Stroke';
