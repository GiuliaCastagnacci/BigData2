MATCH (year:Year)-[:CONTIENE]->(track:Track)
WITH year, AVG(track.energy) AS avgEnergy
SET year.energyCategory = CASE
   WHEN avgEnergy < 0.5 THEN 'Low'
   ELSE 'High'
END
