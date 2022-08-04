SELECT users.name, ifnull(sum(distance), 0)  AS travelled_distance 
FROM users
LEFT JOIN rides ON 
users.id = rides.user_id
GROUP BY rides.user_id
ORDER BY travelled_distance DESC, name 
