SELECT id, 
MAX(CASE WHEN month='jan' THEN revenue END)AS Jan_revenue,
MAX(CASE WHEN month='feb' THEN revenue END)AS Feb_revenue,
MAX(CASE WHEN month='mar' THEN revenue END)AS Mar_revenue,
MAX(CASE WHEN month='apr' THEN revenue END)AS Apr_revenue,
MAX(CASE WHEN month='may' THEN revenue END)AS May_revenue,
MAX(CASE WHEN month='jun' THEN revenue END)AS Jun_revenue,
MAX(CASE WHEN month='jul' THEN revenue END)AS Jul_revenue,
MAX(CASE WHEN month='aug' THEN revenue END)AS Aug_revenue,
MAX(CASE WHEN month='sep' THEN revenue END)AS Sep_revenue,
MAX(CASE WHEN month='oct' THEN revenue END)AS Oct_revenue,
MAX(CASE WHEN month='nov' THEN revenue END)AS Nov_revenue,
MAX(CASE WHEN month='dec' THEN revenue END)AS Dec_revenue
FROM department
GROUP BY id
