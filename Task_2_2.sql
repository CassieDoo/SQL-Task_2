CREATE TABLE IF NOT EXISTS employee (
    employee_ID SERIAL PRIMARY KEY, 
    name VARCHAR(100) UNIQUE NOT NULL, 
    boss VARCHAR(100) UNIQUE NOT NULL, 
    department_id INTEGER NOT NULL REFERENCES department(department_id),
    CONSTRAINT fk_employee FOREIGN KEY (boss) REFERENCES employee (name)
);

CREATE TABLE IF NOT EXISTS department (
	department_id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL
);

