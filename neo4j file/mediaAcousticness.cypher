// Calcola la media dell'acustica per ogni anno
MATCH (year:Year)-[:CONTIENE]->(track:Track)
WITH year, AVG(track.acousticness) AS avgAcousticness
SET year.acousticnessCategory = CASE
   WHEN avgAcousticness < 0.5 THEN 'Low'
   ELSE 'High'
END
