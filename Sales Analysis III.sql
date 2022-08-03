select product_id , product_name
from Product
where product_id not in(
select product_id from Sales
where sale_date >'2019-03-31' or sale_date <'2019-01-01'
)
and product_id in(
select product_id from Sales
where sale_date >='2019-01-01' or sale_date <='2019-03-31'
);
