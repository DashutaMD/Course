SQL-EX.RU

1 
SELECT model,speed,hd FROM PC WHERE price < 500;

2 
SELECT DISTINCT maker FROM Product WHERE type ='Printer';

3 
SELECT model,ram, screen FROM laptop WHERE price>1000;

4
SELECT * FROM Printer WHERE color='y';

5
SELECT model, speed, hd FROM PC 
WHERE (cd='12x' or cd='24x') and price<600;

6
Select distinct Product.maker, Laptop.speed  from Product 
join Laptop on Laptop.model=Product.model
where laptop.hd>=10;

7
SELECT p.model, price
FROM Product p, PC pp
WHERE p.model=pp.model
AND maker='B'
UNION
SELECT p.model, price
FROM Product p, printer pp
WHERE p.model=pp.model
AND maker='B'
UNION
SELECT p.model, price
FROM Product p, laptop pp
WHERE p.model=pp.model
AND maker='B';

8
select distinct product.maker
from product
where product.type='PC' and
product.maker not in (
select product.maker
from product
where product.type = 'Laptop');

9
select distinct maker from product
join pc on product.model=pc.model
where pc.speed>=450;

10
SELECT model, price  
FROM Printer  
WHERE price = (SELECT MAX(price) FROM Printer);

