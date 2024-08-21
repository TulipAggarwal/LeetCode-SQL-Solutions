# Write your MySQL query statement below
SELECT p.product_id, IFNULL((ROUND(SUM(p.price * IFNULL(u.units, 0) / SUM(IFNULL(u.units, 0), 2), 0) AS average_price
FROM Prices p JOIN UnitsSold u
ON p.product_id = u.product_id
AND purchase_date BETWEEN start_date AND end_date
GROUP BY product_id
