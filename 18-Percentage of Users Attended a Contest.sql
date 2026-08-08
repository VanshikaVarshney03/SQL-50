# Write your MySQL query statement below
select r.contest_id ,
ROUND(COUNT(DISTINCT u.user_id)*100/(select count(*) from users),2) as percentage
FROM users u
JOIN register r
    ON u.user_id=r.user_id
Group by r.contest_id
ORDER BY percentage DESC, r.contest_id ASC