SELECT
    p."Name" AS employee_name,
    j."job_name",
    c."Name" AS city_name
FROM public.people p
JOIN public.jobs j ON p."Job" = j."ID"
JOIN public.cities c ON p."City" = c."ID"
WHERE
    c."Population"::INTEGER > 400
    AND j."salary"::INTEGER > 500