SELECT name, sum(amount) AS balance FROM users
JOIN transactions ON
users.account = transactions.account
GROUP BY transactions.account
HAVING balance >10000
