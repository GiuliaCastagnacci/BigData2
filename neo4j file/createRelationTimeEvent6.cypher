LOAD CSV WITH HEADERS FROM 'file:///datasetEventiStorici.csv' AS row
MATCH (t:Time {time: row.time})
MATCH (e:Event {event: row.event})
CREATE (t)-[:ACCADE]->(e)
