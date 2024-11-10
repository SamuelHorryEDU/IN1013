-- 1
SELECT reststaff.first_name, reststaff.surname
FROM restbill
INNER JOIN reststaff ON restbill.waiter_no=reststaff.staff_no
WHERE restbill.cust_name = 'Tanya Singh';
-- 2
SELECT room_date
FROM restroom_management RM
INNER JOIN reststaff S ON RM.headwaiter=S.staff_no
WHERE first_name = 'Charles'
AND room_name = 'Green'
AND room_date LIKE '1602%';
-- 3
SELECT S1.first_name, S1.surname
FROM reststaff S1
INNER JOIN reststaff S2 ON S1.headwaiter=S2.headwaiter
WHERE S2.first_name = 'Zoe' and S2.surname = 'Ball';
-- 4
SELECT B.cust_name, B.bill_total, RS.first_name, RS.surname
FROM restbill B
INNER JOIN reststaff RS ON B.waiter_no=RS.staff_no
ORDER BY B.bill_total DESC;
-- 5
SELECT RS1.first_name, RS1.surname
FROM reststaff RS1
INNER JOIN reststaff RS2 ON RS1.headwaiter = RS2.headwaiter
INNER JOIN restbill B ON B.waiter_no = RS2.staff_no
WHERE B.bill_no = 14 OR B.bill_no = 17;
-- 6
SELECT RS.first_name, RS.surname
FROM reststaff RS
INNER JOIN restroom_management M ON RS.headwaiter = M.headwaiter OR RS.staff_no = M.headwaiter
WHERE M.room_name = 'Blue' AND M.room_date = '160312';

