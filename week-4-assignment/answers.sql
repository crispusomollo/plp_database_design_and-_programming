-- Part 1: INSERT Data

-- question 1.1
INSERT INTO patients (first_name, last_name, date_of_birth, gender, language)
VALUES ('John', 'Doe', '1980-11-15', 'Male', 'English');


-- Part 2: UPDATE Data

-- question 2.1
UPDATE patients
SET language = 'Spanish'
WHERE first_name = 'John' AND last_name = 'Doe';


-- Part 3: DELETE Data

-- question 3.1
DELETE FROM patients
WHERE patient_id = 10;


-- Part 4: Handling NULL Values

-- question 4.1
SELECT 
    first_name, last_name,
    COALESCE(email_address, 'N/A') AS email_address
FROM providers;

-- question 4.2
SELECT first_name, last_name,
       COALESCE(phone_number, 'Missing details') AS phone_number,
       COALESCE(email_address, 'Missing details') AS email_address
FROM providers;


-- Bonus question
SELECT 
    first_name, last_name, phone_number, email_address
FROM
    providers
WHERE
    provider_specialty = 'Pediatrics'
        AND (phone_number IS NULL
        OR email_address IS NULL);
