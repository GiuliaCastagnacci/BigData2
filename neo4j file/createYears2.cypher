LOAD CSV WITH HEADERS FROM 'file:///spotify_filtered_update.csv' AS row
WITH DISTINCT row.release_date AS releaseDate
CREATE (year:Year { year: toInteger(releaseDate)})