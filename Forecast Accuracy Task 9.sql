CREATE DEFINER=`root`@`localhost` PROCEDURE `get_forecast_Accuracy`(
in_fiscal_year INT)
BEGIN
with forecast_err_tables  as
(
select s.customer_code,
sum((forecast_quantity-sold_quantity))  as net_error,
sum((forecast_quantity-sold_quantity)) * 100/sum(forecast_quantity) as net_error_pct,
sum(abs(forecast_quantity-sold_quantity)) as abs_error,
sum(abs(forecast_quantity-sold_quantity)) * 100/sum(forecast_quantity) as abs_error_pct
from fact_act_est s
where s.fiscal_year=in_fiscal_year
group by customer_code
 )
select fe.*,
c.customer,
c.market,

if(abs_error_pct>100,0,100-abs_error_pct) as forecast_Accuracy
from forecast_err_tables fe
join
dim_customer c
using(customer_code)
order by forecast_Accuracy desc;

END