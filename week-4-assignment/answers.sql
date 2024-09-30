-- Part 1: INSERT Data

-- question 1.1
INSERT INTO patients (first_name, last_name, date_of_birth, gender, language)
VALUES ('John', 'Doe', '1980-11-15', 'Male', 'English');


-- Part 2: UPDATE Data

-- question 2.1
UPDATE patients
SET language = 'Spanish'
WHERE first_name = 'John' AND last_name = 'Doe';
