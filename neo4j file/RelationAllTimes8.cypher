MATCH (at:AllTimes {name: 'all times'})
MATCH (t:Time)
CREATE (at)-[:INCLUDE]->(t)