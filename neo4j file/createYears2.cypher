LOAD CSV WITH HEADERS FROM 'file:///prova.csv' AS row
WITH DISTINCT row.release_date AS releaseDate
CREATE (year:Year { year: toInteger(releaseDate)})