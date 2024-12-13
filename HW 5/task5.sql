-- 1
SELECT first_name, surname, bill_date, COUNT(*)
FROM restStaff
INNER JOIN restBill
ON restStaff.staff_no = restBill.waiter_no
GROUP BY first_name, surname, bill_date
HAVING COUNT(*) >= 2;
-- 2
SELECT room_name, COUNT(*)
FROM restRest_table
WHERE no_of_seats > 6
GROUP BY room_name;
-- 3
SELECT room_name, SUM(bill_total)
FROM restBill
INNER JOIN restRest_table rt
ON restBill.table_no = rt.table_no
GROUP BY rt.room_name;
-- 4
SELECT s2.first_name, s2.surname, SUM(bill_total)
FROM restBill b
INNER JOIN restStaff s1
ON b.waiter_no = s1.staff_no
INNER JOIN restStaff s2
ON s1.headwaiter = s2.staff_no
GROUP BY s2.first_name, s2.surname
ORDER BY sum(bill_total) DESC;
-- 5
SELECT cust_name FROM restBill
GROUP BY cust_name HAVING AVG(bill_total) > 400;
-- 6

SELECT first_name, surname, count(*)
FROM restStaff
INNER JOIN restBill
ON restStaff.staff_no = restBill.waiter_no
GROUP BY first_name, surname, bill_date
HAVING COUNT(*) >= 3;