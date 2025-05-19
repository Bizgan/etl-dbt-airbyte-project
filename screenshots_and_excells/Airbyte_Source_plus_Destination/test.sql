SELECT * FROM public.people;
CREATE VIEW people_export AS
SELECT 
  p."ID",
  p."Name",
  p."Age",
  c."Name" AS city,
  j."job_name" AS job,
  j."salary"
FROM people p
JOIN cities c ON p."City" = c."ID"
JOIN jobs j ON p."Job" = j."ID";