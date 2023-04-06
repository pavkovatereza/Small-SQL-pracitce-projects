# Creating table and inserting values
CREATE TABLE purchase_history
(userid int
,productid int
,purchasedate date
);

INSERT INTO purchase_history (userid,productid,purchasedate)
VALUES
(1,1,STR_TO_DATE('23-01-2012','%d-%m-%Y')),
(1,2,STR_TO_DATE('23-01-2012','%d-%m-%Y')),
(1,3,STR_TO_DATE('25-01-2012','%d-%m-%Y')),
(2,1,STR_TO_DATE('23-01-2012','%d-%m-%Y')),
(2,2,STR_TO_DATE('23-01-2012','%d-%m-%Y')),
(2,2,STR_TO_DATE('25-01-2012','%d-%m-%Y')),
(2,4,STR_TO_DATE('25-01-2012','%d-%m-%Y')),
(3,4,STR_TO_DATE('23-01-2012','%d-%m-%Y')),
(3,1,STR_TO_DATE('23-01-2012','%d-%m-%Y')),
(4,1,STR_TO_DATE('23-01-2012','%d-%m-%Y')),
(4,2,STR_TO_DATE('25-01-2012','%d-%m-%Y'));

# Task: Given the users purchase history write a query to print users who have done purchase on more than 1 day 
# and products purchased on a given day are never repeated on any other day.
# Bonus points if you solve it without using a subquery or self join.

SELECT *
FROM purchase_history

SELECT userid
FROM purchase_history
GROUP BY userid
HAVING COUNT(DISTINCT purchasedate) > 1 AND 
	COUNT(DISTINCT productid) = COUNT(productid)
