SELECT s.name FROM salesperson s
WHERE sales_id not in (
SELECT o.sales_id FROM orders o
JOIN company c 
ON o.com_id = c.com_id
WHERE c.name ="RED"
)
    
