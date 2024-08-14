// Delete the relationship between Germany and its average salary
MATCH (germany:Country {name: "Germany"})-[r:HAS_AVERAGE_SALARY]->(s:Average_Salary)
DELETE r
RETURN germany.name AS Country;

// Delete the UK country node and its associated relationships
MATCH (uk:Country {name: "UK"})
OPTIONAL MATCH (uk)-[r:HAS_AVERAGE_SALARY]->()
DELETE r, uk
RETURN "Deleted UK and its associated data";

MATCH (c:Country {name: "USA"})
DETACH DELETE c;