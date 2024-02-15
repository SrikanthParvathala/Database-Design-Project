/* 1. Statistics_by_department */
USE team03_dei;
CREATE OR REPLACE VIEW salary_statistics_by_department AS
SELECT
Department_name,
CONCAT('$', FORMAT(SUM(Salary),2)) AS Total_salary,
CONCAT('$', FORMAT(AVG(Salary),2)) AS Average_salary, 
satisfaction.Satisfaction_description
FROM employees
JOIN Departments
USING (Department_ID)
JOIN satisfaction
ON departments.Satisfaction_ID=satisfaction.Satisfaction_ID
GROUP BY
Department_name, satisfaction.Satisfaction_ID;

/*2. Highest earning employees in each department and their satisfaction rating */
USE team03_dei;
CREATE OR REPLACE VIEW highest_salary_employees_satisfaction AS
SELECT
Employee_ID, Employee_first_name, Employee_last_name,
CONCAT('$', FORMAT(Salary,2)) AS Salary, Satisfaction_description
FROM Employees
JOIN satisfaction USING(Satisfaction_ID)
WHERE Salary = (
SELECT MAX(Salary)
FROM Employees e1
WHERE e1.Department_ID=Employees.Department_ID
);

/* 3. Total number of employees in each department sorted. */
USE team03_dei;
CREATE OR REPLACE VIEW department_employee_summary AS
SELECT
Department_name,
COUNT(Employee_ID) AS total_employees
FROM Employees
JOIN Departments USING(Department_ID)
GROUP BY Department_name WITH ROLLUP 
ORDER BY total_employees;

/*4. Comparison of satisfaction scores vs their salary */
USE team03_dei;
CREATE OR REPLACE VIEW avg_salary_range_vs_avg_satisfaction_rate AS
SELECT
'Greater than average Salary' AS Salary_Comparison,
AVG(Satisfaction_ID) AS Average_satisfaction_rate
FROM Employees
WHERE Salary >= (
SELECT AVG(Salary) FROM Employees
)
UNION
SELECT
'Lesser than average Salary' AS Salary_Comparison,
AVG(Satisfaction_ID) AS Average_satisfaction_rate
FROM Employees
WHERE Salary < (
SELECT AVG(Salary) FROM Employees
);

/*5. Average salary of employees in different demographic groups */
USE team03_dei;
CREATE OR REPLACE VIEW ethnicity_avg_salary AS
SELECT Ethnicity_description AS Ethnicity, CONCAT('$', FORMAT(AVG(Salary),2)) AS Average_salary
FROM Employees
JOIN employees_ethnicity USING(Employee_ID)
JOIN ethnicity USING(Ethnicity_ID)
GROUP BY Ethnicity_ID
ORDER BY Average_salary DESC;

/*6. Average age of employees for each sexual identity */
USE team03_dei;
CREATE OR REPLACE VIEW age_sexual_orientation AS
SELECT Sexual_orientation_description AS Sexual_Orientation,
ROUND(AVG(Employee_age),2) AS average_age
FROM employees
JOIN employees_sexual_orientations USING(Employee_ID)
JOIN sexual_orientations USING(Sexual_orientation_ID)
GROUP BY Sexual_orientation;

/*7. Is the job satisfaction rate higher among employees with disabilities compared to non-disabled employees? */
USE team03_dei;
CREATE OR REPLACE VIEW disability_satisfaction_score AS
SELECT
CASE
WHEN Disability_ID = '1' THEN 'Disabled'
WHEN Disability_ID = '2' THEN 'non-Disabled'
ELSE 'Prefer not to say'
END AS disability_status,
AVG(Satisfaction_ID) AS avg_satisfaction_score
FROM Employees
GROUP BY disability_status;

/*8. What are the counts of genders and sexual orientations, as well as the satisfaction, for the Finance and R&D departments? */
USE team03_dei;
CREATE OR REPLACE VIEW dept_diversity_satisfaction AS
SELECT Department_name, COUNT(DISTINCT employees_sexual_orientations.Sexual_orientation_ID) AS sexual_orientation_count, COUNT(DISTINCT GENDER_ID) AS gender_count, satisfaction.Satisfaction_description as department_satisfaction
FROM Employees
JOIN Departments
ON Employees.Department_ID = Departments.Department_ID
JOIN employees_sexual_orientations
ON Employees.Employee_ID = employees_sexual_orientations.Employee_ID
JOIN sexual_orientations
ON employees_sexual_orientations.Sexual_orientation_ID = sexual_orientations.Sexual_orientation_ID
JOIN satisfaction
ON departments.Satisfaction_ID = satisfaction.Satisfaction_ID
WHERE Department_name='Finance' OR Department_name='RD'
GROUP BY Departments.Department_name, Satisfaction.Satisfaction_ID;

/*9. Which departments have the least nationality groups? */
USE team03_dei;
CREATE OR REPLACE VIEW nationality_groups AS
SELECT Department_name, COUNT(DISTINCT Nationality_ID) AS nationality_count
FROM Employees
JOIN Departments USING (Department_ID)
GROUP BY Department_name
ORDER BY nationality_count DESC;

/*10. Which departments have the most ethnicity groups? */
USE team03_dei;
CREATE OR REPLACE VIEW ethnic_diversity AS
SELECT Department_name, COUNT(DISTINCT Ethnicity_ID) AS ethnicity_count
FROM Employees
JOIN Departments USING(Department_ID)
JOIN employees_ethnicity USING(Employee_ID)
JOIN ethnicity USING(Ethnicity_ID)
GROUP BY Department_name
ORDER BY ethnicity_count DESC;
