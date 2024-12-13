-- 1
SELECT DISTINCT b.cust_name
FROM restBill b
WHERE bill_total > 450
AND waiter_no IN
(SELECT staff_no FROM restStaff WHERE headwaiter = 
(SELECT staff_no FROM restStaff WHERE first_name = 'Charles'));
-- 2
SELECT first_name, surname
FROM restStaff
WHERE staff_no IN
(SELECT headwaiter FROM restStaff WHERE staff_no IN
(SELECT DISTINCT waiter_no FROM restBill WHERE bill_date = 160111 AND cust_name LIKE 'Nerida%'));
-- 3
SELECT DISTINCT cust_name
FROM restBill
WHERE bill_total = (SELECT MIN(bill_total) FROM restBill);
-- 4
SELECT first_name, surname
FROM restStaff
WHERE headwaiter IS NOT NULL AND staff_no NOT IN
(SELECT DISTINCT waiter_no FROM restBill);
-- 5
SELECT cust_name, s.first_name, s.surname, rm.room_name, 
FROM restBill b
INNER JOIN restRest_table rt
ON b.table_no = rt.table_no
INNER JOIN restRoom_management rm
ON rt.room_name = rm.room_name
INNER JOIN restStaff s
ON rm.headwaiter = s.staff_no
WHERE b.bill_date = rm.room_date and bill_total = (select max(bill_total) FROM restBill);