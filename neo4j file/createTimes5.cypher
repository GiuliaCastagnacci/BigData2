LOAD CSV WITH HEADERS FROM 'file:///datasetEventiStorici.csv' AS row
CREATE (:Time {time: row.time})
CREATE (:Event {event: row.event})
