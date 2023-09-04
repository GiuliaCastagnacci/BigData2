LOAD CSV WITH HEADERS FROM 'file:///spotify_filtered_update.csv' AS row
MATCH (year:Year {year: toInteger(row.release_date)})
CREATE (track:Track {name: row.name})
MERGE (year)-[:CONTIENE]->(track)
SET track.energy = toFloat(row.energy),
    track.acousticness = toFloat(row.acousticness),
    track.valence = toFloat(row.valence)