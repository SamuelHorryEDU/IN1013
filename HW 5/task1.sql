-- 1
SELECT bill_date, bill_total 
FROM restbill 
WHERE cust_name = 'Bob Crow';
-- 2
SELECT DISTINCT cust_name 
FROM restbill 
WHERE cust_name LIKE '%Smith' 
ORDER BY cust_name DESC;
-- 3
SELECT DISTINCT cust_name 
FROM restbill 
WHERE cust_name LIKE '% C%' 
ORDER BY cust_name DESC;
-- 4
SELECT first_name, surname
FROM reststaff
WHERE headwaiter IS NULL;
-- 5
SELECT *
FROM restbill
WHERE bill_date LIKE '1602%';
-- 6
SELECT DISTINCT bill_date
FROM restbill
WHERE bill_date LIKE '15%'
ORDER BY bill_date ASC;




