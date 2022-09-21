/*ANALYSIS OF SALES*/

/*REVENUE  BREAKDOWN BY CITY*/
SELECT markets_name as city, sum(sales_amount) as revenue
FROM markets inner join transactions on markets.markets_code=transactions.market_code
group by markets_name
order by 2 desc

/*REVENUE BREAKDOWN BY YEARS*/
SELECT year,sum(sales_amount) as revenue
from date inner join transactions on date.date=transactions.order_date
group by year
order by 2 desc

/*REVENUE BREAKDOWN BY MONTHS*/
SELECT month_name as month,sum(sales_amount) as revenue
from  date inner join transactions on date.date=transactions.order_date
group by month_name
order by 2 desc

/*TOP 5 CUSTOMERS BY REVENUE AND SALES QUANTITY*/
SELECT custmer_name as customer_name, sum(sales_amount) as revenue,sum(sales_qty) as sales_quantity
from customers inner join transactions on customers.customer_code=transactions.customer_code
group by custmer_name
order by 2 desc
limit 5

/*TOP 5 PRODUCTS BY REVENUE NUMBER*/
select product_type, sum(sales_amount) as revenue
from products inner join transactions on products.product_code=transactions.product_code
group by product_type
order by 2 desc
limit 5



