CREATE DEFINER=`root`@`localhost` FUNCTION `get_fiscal_year`(
calendar_Date DATE
) RETURNS int
    DETERMINISTIC
BEGIN
declare fiscal_year INT;

SET fiscal_year=YEAR(DATE_ADD(calendar_Date,INTERVAL 4 MONTH));
RETURN fiscal_year;
END