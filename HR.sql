-- THIS IS HOW YOU COMMENT
-- DOUBLE HYPEN IS COMMENT IN sql
--SQL is most of the time case insensitive
-- * is wildcard, means all the columns
--SQL Query END WITH semicolumn
--Each query will run independently
--Last commit-
SELECT
    *
FROM
    employees;
--YOU CAN ONLY USE THE TABLES THAT EXIST
--OR IT WILL GIVE YOU ERROR
SELECT
    *
FROM
    countries;
--TASK 1:
--USING ABOVE EXAMPLE, SEE ALL DATA FROM ALL OTHER TABLES
SELECT
    *
FROM
    departments;

SELECT
    *
FROM
    job_history;

SELECT
    *
FROM
    jobs;

SELECT
    *
FROM
    locations;

SELECT
    *
FROM
    regions;

-- SELECTING FROM THE SPECIFIC COLUMN RATHER THAN ALL OF THEM FROM A TABLE
-- YOU CAN USE COLUMN NAME SEPERATED BY COMMA TO GET ONLY COLUMNS YOU CARE ABOUT

SELECT
    first_name,
    salary
FROM
    employees;

--TASK 2: SHOW THE RESULT OF ALL LAST_NAME , HIRE_DATE , DEPARTMENT_ID
SELECT
    last_name,
    hire_date,
    department_id
FROM
    employees;

--TASK 3: SHOW THE RESULT OF ALL STREET_ADDRESS, CITY,STATE_PROVINCE

SELECT
    street_address,
    city,
    state_province
FROM
    locations;
--RESTRICTING THE ROW WITH CONDITION
-- WHERE CLAUSE CAN BE USED AFTER THE FROM TABLENAME
-- TO RESTRICT THE RESULT ACCORDING TO CERTAIN CONDITION

-- GET ALL THE EMPLOYEE INFORMATION IF THEIR SALARY IS MORE THAN 10000
SELECT
    *
FROM
    employees
WHERE
    salary > 10000;

-- WHAT OTHER RELATIONAL OPERATORS ARE AVAILABLE
-- = EQUAL | NOT EQUAL <> !=
SELECT
    first_name,
    last_name,
    salary
FROM
    employees
WHERE
--  salary <> 24000;
    salary != 24000;
-- WHAT ABOUT STRING
-- find out first name and last name of employees
-- with first name alexander
SELECT FIRST_NAME, LAST_NAME
FROM employees
WHERE first_name = 'Alexander';
-- command is not case sensitive but THE DATA IS CASE SENSITIVE

-- TASK 4: SELECT ALL LOCATION INFO FROM DEPARTMENT TABLE
        -- NOT INCLUDING THE LOCATION ID OF 1700
SELECT * 
FROM departments
WHERE location_id <> 1700;

-- >, >=, <, <= ARE ALSO AVAILABLE

-- LOGICAL OPERATOR AND OR

-- FIND OUT ALL EMPLOYEES WITH SALARY BETWEEN 8000, 12000

SELECT *
FROM EMPLOYEES
WHERE SALARY >= 8000 AND SALARY <=12000;

-- FIND OUT EMPLOYEE_ID, FIRST_NAME, SALARY WITH SALARY BETWEEN OVER 12000, AND LESS THAN 6000

SELECT EMPLOYEE_ID, FIRST_NAME, SALARY
FROM EMPLOYEES
WHERE SALARY >= 12000 OR SALARY <=6000;

-- DIFFERENT APPROACH
-- FIND OUT ALL EMPLOYEES WITH SALARY BETWEEN 800, 12000
SELECT * FROM employees
WHERE SALARY BETWEEN 8000 AND 12000;
