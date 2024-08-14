
// ================ Querying For Nodes ================== //
MATCH (n) RETURN n

// Find countries with the same average salary
MATCH (c1:Country)-[:HAS_AVERAGE_SALARY]->(s1:Average_Salary),
      (c2:Country)-[:HAS_AVERAGE_SALARY]->(s2:Average_Salary)
WHERE s1.amount = s2.amount AND c1 <> c2
RETURN c1.name AS Country1, c2.name AS Country2, s1.amount AS Average_Salary;

// Find countries with an average salary in a specific range
MATCH (c:Country)-[:HAS_AVERAGE_SALARY]->(s:Average_Salary)
WHERE s.amount >= 30000 AND s.amount <= 60000
RETURN c.name AS Country, s.amount AS Average_Salary;

// Count the number of countries in each continent
MATCH (c:Country)-[:LOCATED_IN]->(con:Continent)
RETURN con.name AS Continent, COUNT(c) AS Number_of_Countries
ORDER BY Number_of_Countries DESC;

// Find countries in North America with a salary higher than the continent's average
MATCH (c:Country)-[:LOCATED_IN]->(con:Continent {name: "North America"}), 
      (c)-[:HAS_AVERAGE_SALARY]->(s:Average_Salary),
      (con)<-[:LOCATED_IN]-(other:Country)-[:HAS_AVERAGE_SALARY]->(other_s:Average_Salary)
WITH con, s.amount AS country_salary, AVG(other_s.amount) AS avg_continent_salary
WHERE country_salary > avg_continent_salary
RETURN c.name AS Country, country_salary AS Salary;

// Get all countries ordered by average salary in descending order
MATCH (c:Country)-[:HAS_AVERAGE_SALARY]->(s:Average_Salary)
RETURN c.name AS Country, s.amount AS Average_Salary
ORDER BY s.amount DESC;

// Find the country in Europe with the highest average salary
MATCH (c:Country)-[:LOCATED_IN]->(con:Continent {name: "Europe"}), 
      (c)-[:HAS_AVERAGE_SALARY]->(s:Average_Salary)
RETURN c.name AS Country, s.amount AS Average_Salary
ORDER BY s.amount DESC
LIMIT 1;

