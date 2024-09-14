show databases;

use hospital_db;

show tables;

-- question 1.1
explain patients;
select first_name, last_name, date_of_birth from patients;

-- question 1.2
desc providers;
select provider_id, first_name, provider_speciality from providers;

-- question 2.1
select * from patients where first_name LIKE 'Ab%';

-- question 2.2
select * from providers where provider_speciality LIKE '%y';

-- question 3.1
select * from patients where date_of_birth >= '1980-01-01';

-- question 3.2
select * from ed_visits where acuity >= 2;

-- question 4.1
select * from patients where language = 'Spanish';

-- question 4.2
select * from ed_visits where reason_for_visit = 'Migraine' AND disposition = 'Admitted';

-- question 4.3
select * from patients where date_of_birth BETWEEN '1975-01-01' AND '1980-12-31';

-- question 5.1
select first_name, last_name from patients order by last_name ASC;

-- question 5.2
select * from visits order by date_of_visit DESC;

-- question 6.1
select * from admissions where primary_diagnosis = 'Stroke' AND discharge_disposition = 'Home';

-- question 6.2
select * from providers where date_joined > '1995-12-31' AND provider_speciality = 'Pediatrics' OR provider_speciality = 'Cardiology';

-- Bonus Challenge
select * from discharges where discharge_disposition = 'Discharged' AND discharge_date between '2018-03-01' AND '2018-03-07'; 
