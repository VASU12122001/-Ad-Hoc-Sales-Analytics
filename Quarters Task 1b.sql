CREATE DEFINER=`root`@`localhost` FUNCTION `get_fiscal_quarter`(
calendar_date DATE
) RETURNS char(2) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
declare m tinyint;
declare qtr char(2);
set m=MONTH(calendar_date);


CASE
WHEN m in (9,10,11) then
set qtr="Q1";
WHEN m in (12,1,2) then
set qtr="Q2";
WHEN m in (3,4,5) then
set qtr="Q3";
else
set qtr="Q4";
END CASE;




RETURN qtr;
END