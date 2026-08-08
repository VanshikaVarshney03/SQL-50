SELECT 
	query_name,
	ROUND(AVG(rating / position), 2) AS quality,
ROUND(SUM(rating < 3) * 100.0 / COUNT(*), 2) AS poor_query_percentage
	-- ROUND(AVG(rating < 3) * 100, 2) AS poor_query_percentage 
    --   ROUND((SUM(CASE WHEN rating<3 THEN 1 ELSE 0 END) / count(*)) * 100,2) AS poor_query_percentage

FROM 
	Queries
GROUP BY 
	query_name