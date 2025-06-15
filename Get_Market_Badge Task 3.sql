CREATE DEFINER=`root`@`localhost` PROCEDURE `get_market_badge`(

IN in_market varchar(45),
IN in_fiscal_year year,
OUT out_badge varchar(45)
)
BEGIN
declare qty int default 0;

#SET DEFAULT MARKET=INDIA
if in_market="" then
set in_market="India";
end if;

SELECT 
SUM(sold_quantity)
INTO qty FROM
fact_sales_monthly s
JOIN
dim_customer c ON s.customer_code = c.customer_code
WHERE
GET_FISCAL_YEAR(s.date) = 2021
AND c.market = in_market
GROUP BY c.market;

#determine market badge
if qty>5000000 then
set out_badge="GOLD";
else 
set out_badge="SILVER";
end if;
END