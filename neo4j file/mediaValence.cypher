MATCH (year:Year)-[:CONTIENE]->(track:Track)
WITH year, AVG(track.valence) AS avgValence
SET year.valenceCategory = CASE
   WHEN avgValence < 0.5 THEN 'Low'
   ELSE 'High'
END

