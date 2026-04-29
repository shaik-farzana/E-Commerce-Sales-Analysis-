use ecommerce_analytics;
select * from orders limit 10;
select * from order_details limit 10;


/*Q1.write a query to Calculate the total no.of orders,total revenue,total profit,average order value,
total quantity of items sold?*/

select count(distinct order_id)as total_orders,
sum(amount)as total_revenue,
sum(profit)as total_profit,
round(sum(amount)/count(distinct order_id),2)as avg_order_value,
sum(quantity)as total_quantity
from order_details;


# Q2.write a query to calculate revenue,profit and profit margin by category ?

select category,
sum(amount)as total_revenue,
sum(profit)as profit,
round(sum(profit)/sum(amount)*100,2)as profit_margin
from order_details
group by category
order by revenue desc;


#Q3.write a query to analyze how many orders,revenue generated anad % share of each payment mode?

select payment_mode,
count(*)as orders_count,
sum(amount)as total_revenue,
round(count(*)*100.0/sum(count(*)) over(),2) as percentage
from order_details
group by payment_mode
order by orders_count desc;


#Q4.write a query for top 10 states by revenue?

select o.state,sum(od.amount)as total_revenue
from orders o  join order_details od on o.order_id=od.order_id
group by o.state 
order by total_revenue desc limit 10;


#Q5.write a query for top 10 customers by revenue?

select o.customer_name,o.state,sum(od.amount)as total_revenue
from orders o  join order_details od on o.order_id=od.order_id
 group by customer_name,o.state
 limit 10;
 
 
 #Q6.write a query to calculate monthly revenue trend?
 
 select month(str_to_date(o.order_date,'%d-%m-%y'))as month_num,
 monthname(str_to_date(o.order_date,'%d-%m-%y'))as month_name,
 sum(od.amount) from orders o inner join order_details od on o.order_id=od.order_id
 group by month_name,month_num
 order by month_num;
 
 
 #Q7 write query to find sub-category wise profit/loss analysis?
 
 select sub_category,
 sum(profit) as total_profit,
 case
 when sum(profit)>0 then 'profit making'
 else 'loss making'
 end as performance
 from order_details
 group by sub_category
 order by total_profit desc;
 
 
 #Q8 write a query to rank states by revenue using rank()?
 
 select o.state,sum(od.amount),
 dense_rank()over(order by sum(od.amount) desc)as revenue_rank
 from orders o join order_details od on o.order_id=od.order_id
 group by o.state;
 
 
#Q9.write query for running total revenue by month?

with monthly_revenue as(
select month(str_to_date(o.order_date,'%d-%m-%Y'))as month_num,
sum(od.amount)as monthly_revenue 
from orders o 
join
order_details od on o.order_id =od.order_id
group by month_num)
select month_num,monthly_revenue,
sum(monthly_revenue)over(order by month_num)as running_total
from monthly_revenue
order by month_num;
 
 
 #Q10.write query to determine the percentage contribution of each category to overall revenue?
 
 select category,sum(amount)as category_revenue,
 round(sum(amount)* 100.0/sum(sum(amount)) over(),2)as revenue_share
 from order_details
 group by category;
 
 