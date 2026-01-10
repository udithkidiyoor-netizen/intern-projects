select * from THE;

SELECT "Rank" ,"Name",
  "Student Population",
  "Students to Staff Ratio",
  CAST(REPLACE("International Students", '%', '') AS REAL) AS intl_pct
FROM THE
WHERE Year = 2026
  AND Name LIKE '%Manipal A%';

DROP VIEW IF EXISTS vw_manipal_like_2026 ;

CREATE VIEW vw_manipal_like_2026 AS

SELECT
  *,
  CAST(REPLACE("International Students", '%', '') AS REAL) AS international_pct
FROM THE
WHERE Year = 2026
  AND "Rank" BETWEEN 200 AND 600
  AND "Student Population" BETWEEN 15000 AND 33000
  AND "Students to Staff Ratio" BETWEEN 6 AND 12
  AND CAST(REPLACE("International Students", '%', '') AS REAL)
      BETWEEN 7 AND 16;

SELECT * FROM vw_manipal_like_2026;

DROP VIEW IF EXISTS vw_manipal_like_2026;

CREATE VIEW vw_manipal_like_2026 AS
SELECT
  *,
  CAST(REPLACE("International Students", '%', '') AS REAL) AS international_pct,
  CAST(REPLACE("Student Population", ',', '') AS REAL)     AS student_population_num
FROM THE
WHERE Year = 2026
  AND "Rank" BETWEEN 200 AND 600
  AND CAST(REPLACE("Student Population", ',', '') AS REAL)
      BETWEEN 15000 AND 33000
  AND "Students to Staff Ratio" BETWEEN 6 AND 12
  AND CAST(REPLACE("International Students", '%', '') AS REAL)
      BETWEEN 7 AND 16;

