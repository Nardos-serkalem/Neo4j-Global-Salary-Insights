CREATE 
(usa:Country{name:"USA"}),
(canada:Country{name:"Canada"}),
(uk:Country{name:"UK"}),
(germany:Country{name:"Germany"}),
(australia:Country{name:"Australia"}),

(north_america:Continent{name:"North America"}),
(europe:Continent{name:"Europe"}),
(australia_cont:Continent{name:"Australia"}),

(usa)-[:LOCATED_IN]->(north_america),
(canada)-[:LOCATED_IN]->(north_america),
(uk)-[:LOCATED_IN]->(europe),
(germany)-[:LOCATED_IN]->(europe),
(australia)-[:LOCATED_IN]->(australia_cont),

(usa_avg_salary:Average_Salary{amount: 65000}),
(canada_avg_salary:Average_Salary{amount: 55000}),
(uk_avg_salary:Average_Salary{amount: 48000}),
(germany_avg_salary:Average_Salary{amount: 52000}),
(australia_avg_salary:Average_Salary{amount: 60000}),

(usa)-[:HAS_AVERAGE_SALARY]->(usa_avg_salary),
(canada)-[:HAS_AVERAGE_SALARY]->(canada_avg_salary),
(uk)-[:HAS_AVERAGE_SALARY]->(uk_avg_salary),
(germany)-[:HAS_AVERAGE_SALARY]->(germany_avg_salary),
(australia)-[:HAS_AVERAGE_SALARY]->(australia_avg_salary);