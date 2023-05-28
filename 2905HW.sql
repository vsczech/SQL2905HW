
/*
ПРАКТИЧЕСКОЕ ЗАДАНИЕ 2.

Задание 1. Используя операторы языка SQL, создайте табличку “sales”. Заполните ее данными
*/


CREATE DATABASE Goods_And_Sales;

USE Goods_And_Sales;

CREATE TABLE sales
(id INT PRIMARY KEY NOT NULL,
order_date DATETIME NOT NULL,
count_product INT NOT NULL);

INSERT Sales(id, order_date, count_product)
VALUES
(1, "2022-01-01", 156),
(2, "2022-01-01", 180),
(3, "2022-01-01", 21),
(4, "2022-01-01", 124),
(5, "2022-01-01", 341);


/*
Задание 2. Сгруппируйте значений количества в 3 сегмента — меньше 100, 100-300 и больше 300 (функция IF).
*/

USE Goods_And_Sales;

SELECT id, 
    IF(count_product < 100, "Маленький заказ", 
    IF (count_product >= 100 AND count_product <= 300, "Средний заказ", "Большой заказ"))
AS "Тип заказа"
FROM sales;

/*
Задание 3. Создайте таблицу “orders”, заполните ее значениями. Покажите “полный” статус заказа, используя оператор CASE.
*/

USE Goods_And_Sales;

CREATE TABLE orders
(id INT PRIMARY KEY NOT NULL,
employee_id VARCHAR(3) NOT NULL,
amount INT NOT NULL,
order_status VARCHAR(10) NOT NULL);

INSERT orders(id, employee_id, amount, order_status)
VALUES
(1, "e03", 15, "OPEN"),
(2, "e01", 25.5, "OPEN"),
(3, "e05", 100.7, "CLOSED"),
(4, "e02", 22.18, "OPEN"),
(5, "e04", 9.5, "CANCELLED");

SELECT id,
    CASE 
    WHEN order_status = "OPEN" THEN "Order is in open state"
    WHEN order_status = "CLOSED" THEN "Order is closed"
    WHEN order_status = "CANCELLED" THEN "Order is cancelled»"
    ELSE "N/A"
    END AS full_order_status
    FROM orders;
    
    



/*
Задание 4. Чем NULL отличается от 0?
*/

-- NULL отличается от 0 тем, что NULL не представляет никакое значение, в то время как 0 представляет арифметическое значение нуля.