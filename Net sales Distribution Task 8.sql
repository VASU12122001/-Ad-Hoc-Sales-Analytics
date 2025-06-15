CREATE DEFINER=`root`@`localhost` PROCEDURE `customer wise net sales distibution per region`(
IN in_fiscal_year int)
BEGIN
with cte1 as (
Select c.customer,c.region,
round(sum(net_sales)/1000000,2) as net_sales_mln
from gdb0041.net_sales n
join dim_customer c
on n.customer_code=c.customer_code
where fiscal_year=in_fiscal_year
group by c.customer, c.region)
select*,net_sales_mln*100/sum(net_sales_mln) over (partition by region) as pct_share_region
from cte1 order by region, pct_share_region desc;

END