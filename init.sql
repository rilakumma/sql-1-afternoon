-- 1
CREATE TABLE Person (
  id INTEGER PRIMARY KEY AUTOINCREMENT, 
  name TEXT,
  age INTEGER,
  height INTEGER,
  city TEXT,
  favoriteColor text
); 

-- 2
INSERT INTO Person 
( Name, Age, Height, City, FavoriteColor ) 
VALUES 
( "Madi Walmsley", 24, 178, "Phoenix", "red" ),
( "Alper Mencek", 22, 182, "City", "blue" ),
( "Aaron Goldstein", 26, 185, "Scottsdale", "purple" ),
( "erica droze", 25, 165, "Tempe", "pink" ),
( "randi wenig", 24, 165, "Oakland", "yellow" ); 

-- 3
 select * from Person
 order by height desc

--4
 select * from Person
 order by height asc

 --5
 select * from Person
 order by age desc

 --6
  select * from Person
 where age > 20

 --7
 select * from Person
where age = 18

--8
select * from Person
where age < 20 OR age > 30

--9
SELECT * FROM Person WHERE age != 27

--10
select * from Person
where favoriteColor != 'red'

--11
select * from Person
where favoriteColor != 'red' AND favoriteColor != 'blue'

--12
select * from Person
where favoriteColor = 'orange' OR favoriteColor = 'green'

--13
select * from Person
where favoriteColor in ('orange', 'green', 'blue');

--14
select * from Person
where favoriteColor in ('yellow', 'purple');

--1
CREATE TABLE Orders ( 
  PersonID  INTEGER PRIMARY KEY AUTOINCREMENT, 
  ProductName text, 
  ProductPrice integer, 
  Quantity integer );
  

  --2
INSERT INTO Orders 
  ( ProductName, ProductPrice, Quantity ) 
  VALUES 
  ( "Product1", 100, 50 ),
  ( "Product2", 5, 3 ),
  ( "Product3", 15, 77 ),
  ( "Product4", 11, 2 ),
  ( "Product5", 7, 5 );

  --3
  select * from Orders

  --4
   select SUM(Quantity) from Orders

   --5
    select SUM(ProductPrice) from Orders

    --6
     select SUM(ProductPrice * Quantity) from Orders where PersonID = 3

--1
insert into Artist
(Name)
values
('kim petras'),
('charlie xcx'),
('moomoo'); */

--2
select * from Artist order by Name desc limit 10;

--3
SELECT * FROM Artist ORDER BY Name ASC LIMIT 5;

--4
SELECT * FROM Artist where Name like 'Black%'
--5
SELECT * FROM Artist where Name like '%Black%'

--1
select firstname, lastname from Employee
where city = 'Calgary';

--2
select firstname, lastname, max(birthdate) from Employee;
--3
select firstname, lastname, min(birthdate) from Employee;
--4
select * from Employee where ReportsTo = 2;
--5
select count(*) from Employee where city='Lethbridge';

--1
select count(*) from invoice where billingcountry = 'USA'

--2
select max(total) from invoice
--3
select min(total) from invoice
--4
select * from invoice
where total > 5
--5
select * from invoice
where total < 5
--6
select count(*) from invoice
where billingstate in ('AZ', 'CA', 'TX')
--7
select avg(total) from invoice
--8
select sum(total) from invoice
