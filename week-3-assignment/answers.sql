-- Part 1: Basic Aggregate Functions

-- question 1.1
SELECT COUNT(*) AS total_admissions FROM admissions;

-- question 1.2
SELECT 
    AVG(DATEDIFF(discharge_date, admission_date)) AS average_length_of_stay
FROM
    admissions,
    discharges;


