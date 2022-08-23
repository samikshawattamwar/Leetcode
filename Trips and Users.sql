SELECT request_at as 'Day',
ROUND( SUM(
CASE WHEN status in ('cancelled_by_driver ','cancelled_by_client') THEN 1 ELSE 0 END)/COUNT(*),2) as 'Cancellation Rate'
FROM Trips as a
JOIN users as b on a.client_id = b.users_id
JOIN users as c on a.driver_id = c.users_id
WHERE (request_at between "2013-10-01" and "2013-10-03") AND (b.banned = 'no') AND (c.banned ='no')
GROUP BY request_at
