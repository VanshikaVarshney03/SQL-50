SELECT 
    ROUND(
        COUNT(DISTINCT a.player_id) /
        (SELECT COUNT(DISTINCT player_id) FROM Activity),
        2
    ) AS fraction
FROM Activity a
WHERE DATEDIFF(
    a.event_date,
    (
        SELECT MIN(b.event_date)
        FROM Activity b
        WHERE b.player_id = a.player_id
    )
) = 1;