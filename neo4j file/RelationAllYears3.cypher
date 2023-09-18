MATCH (allYears:AllYears {name: "Tutti gli anni"})
MATCH (year:Year)
MERGE (allYears)-[:CONTIENE]->(year)