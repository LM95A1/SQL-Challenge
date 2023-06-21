-- CSV Import Schema

-- Ensure this script is run from the directory containing the Sources folder

COPY titles FROM 'Sources/titles.csv' DELIMITER ',' CSV HEADER;
COPY departments FROM 'Sources/departments.csv' DELIMITER ',' CSV HEADER;
COPY employees FROM 'Sources/employees.csv' DELIMITER ',' CSV HEADER;
COPY salaries FROM 'Sources/salaries.csv' DELIMITER ',' CSV HEADER;
COPY dept_emp FROM 'Sources/dept_emp.csv' DELIMITER ',' CSV HEADER;
COPY dept_manager FROM 'Sources/dept_manager.csv' DELIMITER ',' CSV HEADER;
