 

Select SaleDate, Amount, Customers from sales;

Select Saledate, Amount, Boxes, Amount / Boxes as 'Amount per Boxes' from Sales;

Select * from sales 
where Amount > 10000;

Select * from sales 
where Amount > 10000
order by Amount desc;

Select * from Sales 
Where geoid='g1'
order by PID, Amount desc;

Select * from Sales 
Where amount > 10000 and SaleDate >='2022-01-01';

Select saledate, amount from Sales
where amount > 10000 and year(Saledate) = 2022
order by amount desc;

Select * from sales
where boxes >= 0 and boxes <= 50;

Select * from sales
where boxes between 0 and 50;

SELECT SaleDate, Amount, Boxes, WEEKDAY(SaleDate) AS 'Day of Week'
FROM Sales
WHERE WEEKDAY(SaleDate) = 4;

Select * From People;

Select * from People
Where Team = 'Jucies' or Team = 'Delish';

Select * from People 
where Team in ('Jucies','Delish');

Select * from People 
where Salesperson like 'B%';

Select * from People 
Where Salesperson like '%B%';

Select * from Sales;

SELECT SaleDate, Amount,
       CASE 
           WHEN Amount < 1000 THEN 'Under 1K'
           WHEN Amount < 5000 THEN 'Under 5K'
           WHEN Amount < 10000 THEN 'Under 10K'
           ELSE '10K or more'
       END AS AmountCategory
FROM Sales;

Select * from Sales;

Select * from People;

Select s.saledate, s.amount, p.SPID, s.SPID 
from Sales s
join people p on p.SPID = s.SPID;

Select s.saledate, s.amount, pr.Product
from Sales S
left join products pr on pr.PID = S.PID;

Select s.saledate, s.amount, p.Salesperson, p.Team, pr.Product
from Sales s
join people p on p.SPID = s.SPID
join products pr on pr.PID = S.PID;

Select s.saledate, s.amount, p.Salesperson, p.Team, pr.Product
from Sales s
join people p on p.SPID = s.SPID
join products pr on pr.PID = S.PID
where S.Amount < 500
and p.Team = 'Delish';

Select s.saledate, s.amount, p.Salesperson, p.Team, pr.Product
from Sales s
join people p on p.SPID = s.SPID
join products pr on pr.PID = S.PID
where S.Amount < 500
and p.Team = '';

Select s.saledate, s.amount, p.Salesperson, p.Team, pr.Product
from Sales s
join people p on p.SPID = s.SPID
join products pr on pr.PID = S.PID
join geo g on g.geoid = s.geoid
where S.Amount < 500
and p.Team = ''
and g.geo in ('newzealand' and 'india')
order by saledate

Select geoID,sum(amount), avg(amount)
from sales
group by GeoID;

Select g.geo, sum(amount), avg(amount), sum(boxes)
from sales s
join geo g on s.geoID = g.geoid 
group by g.geo;

Select pr.Category, p.team, sum(boxes), sum(amount)
from sales s
join people p on p.SPID  = s.SPID 
join products pr on pr.PID = s.PID
where p.team <> ''
group by pr.Category, p.team
Order by pr.Category, p.team;

Select pr.Product, sum(s.amount) as 'Total Amount'
from sales s 
join products pr on pr.PID = s.PID
group by pr.product
Order by 'Total Amount' desc
limit 10

 

