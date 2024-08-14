// Update the average salary of a specific country
MATCH (c:Country {name: "USA"})-[:HAS_AVERAGE_SALARY]->(s:Average_Salary)
SET s.amount = 70000
RETURN c.name AS Country, s.amount AS Average_Salary;

// Update the average salary of Germany
MATCH (c:Country {name: "Germany"})-[:HAS_AVERAGE_SALARY]->(s:Average_Salary)
SET s.amount = 55000
RETURN c.name AS Country, s.amount AS Average_Salary;

// Update the average salary of the UK
MATCH (c:Country {name: "UK"})-[:HAS_AVERAGE_SALARY]->(s:Average_Salary)
SET s.amount = 50000
RETURN c.name AS Country, s.amount AS Average_Salary;

// Update the average salary of Canada
MATCH (c:Country {name: "Canada"})-[:HAS_AVERAGE_SALARY]->(s:Average_Salary)
SET s.amount = 60000
RETURN c.name AS Country, s.amount AS Average_Salary;