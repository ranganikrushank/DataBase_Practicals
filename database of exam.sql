-- file name = exam of DBMS[002]
create database database1;
use database1;
drop database database1;
create database database2;
use database2;
create table  admin(
    admin_id int primary key auto_increment,
    admin_name VARCHAR(20) not null,
    admin_email_id varchar(50) not null,
    password varchar(30) not null,
     gender char(1) check (gender in ('m', 'f'))
    );
    
insert into admin values(1,'john','john@gmail.com','john!123_','m');
insert into admin values(2,'radha','radha@gmail.com','radha!123_','m');
insert into admin values(3,'MAN','man@gmail.com','man!123_','m');

    
CREATE TABLE user(
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  user_name VARCHAR(20) NOT NULL,
  user_email_id VARCHAR(30) NOT NULL unique,
  password
  VARCHAR(20) NOT NULL,
  gender CHAR(1) CHECK (gender IN ('m', 'f', 'o')),
  city VARCHAR(20),
  mobile_number BIGINT,
  zipcode VARCHAR(6) CHECK (LENGTH(zipcode) = 6)
);

insert into user values(12,'kishan','kishan@gmail.com','kishan@123','m','surat','4567892102',395007);
insert into user values(13,'hitesh','hitesh@gmail.com','hitesh@123','m','navsari','7788223015',395008);
insert into user values(14,'shikunj','shikunj@gmail.com','shikunj@123','m','surat','9856320145',395009);
insert into user values(15,'rekha','rekha@gmail.com','rekha@123','f','home','1234567890',395010);
insert into user values(16,'sima','sima@gmail.com','sima','f','mini varacha',null,395011);
insert into user values(17,'anand','anand@gmail.com','anand','m','big varacha','1114667788',395015);


create table product(
    product_id int primary key,
    product_name VARCHAR(20) not null,
    category VARCHAR(20) not null,
    price FLOAT,
    offer decimal(10.2) default (0),
    quantity SMALLINT,
    description varchar(50)
    );
    
insert into product values(101,'lenovo A78','leptop',78000,1,10.00,'good responce');
insert into product values(102,'semsung S38','watch',1000,2,1.20,'nice');
insert into product values(103,'T.V','electronic',78000,1,10.00,'good responce');
insert into product values(104,'lenovo A78','leptop',78000,3,10.00,'good product');
insert into product values(105,'home theatre ','electronic',800,5,40.00,'A durable item');
insert into product values(106,'washing machine ','electronic',50000,4,40.00,'good experience');
insert into product values(107,'i pad ','electronic',50000,4,00.00,'good experience');
insert into product values(108,'iphone ','electronic',40000,5,null,'good experience');
insert into product values(109,'iphone15 ','electronic',1500,5,null,'nice');



-- [****************************************  E-Commerce Application   database   **************************************]
-- 1)Display the number of products as per the category with the category name.
-- ans :
	
    SELECT category, COUNT(*) AS num_products
		FROM product
		GROUP BY category
		ORDER BY category;


-- 2)Display the user_name whose password length is less than 5.
-- ans :
        -- (●'◡'●) without subquery  (●'◡'●)    

	SELECT user_name
		FROM user
		WHERE LENGTH(password) < 5;
        
        -- (●'◡'●) with subquery  (●'◡'●)    
        
	SELECT user_name
		FROM user
		WHERE password IN (
		SELECT password
		FROM user
		WHERE LENGTH(password) < 5
);


-- 3)Write a query to remove the extra spaces(leading or trailing) from the product name, and display the product name with its category and price. Hint:(use trim function).
-- ans :
        -- (●'◡'●) without subquery  (●'◡'●)    

SELECT TRIM(product_name) AS product_name, category, price
FROM product;

        -- (●'◡'●) with subquery  (●'◡'●)    

SELECT TRIM(product_name) AS product_name, category, price
FROM (
  SELECT product_name, category, price
  FROM product
) AS subquery;


-- 4)display user name whose mobilr number is missing.
-- ans :

        -- (●'◡'●) without subquery  (●'◡'●)    

SELECT user_name
FROM user
WHERE mobile_number IS NULL;

        -- (●'◡'●) with subquery  (●'◡'●)    

SELECT user_name
FROM user
WHERE mobile_number IN (
  SELECT mobile_number
  FROM user
  WHERE mobile_number IS NULL
);


-- 5)Display the distinct categories.  
-- ans :

SELECT DISTINCT category FROM product;

-- 6)Display the username and email of the users whose name starts with vowels.
-- ans :
        -- (●'◡'●) without subquery  (●'◡'●)    

SELECT user_name, user_email_id
FROM user
WHERE user_name LIKE '[aeiou]%';

        -- (●'◡'●) with subquery  (●'◡'●)    

SELECT user_name, user_email_id
FROM user
WHERE LOWER(SUBSTRING(user_name FROM 1 FOR 1)) IN ('a', 'e', 'i', 'o', 'u')
LIMIT 0,1000;


-- 7)Display all the products with name, category, and price (with 2 decimal points).
-- ans :

        -- (●'◡'●) without subquery  (●'◡'●)    
        
SELECT product_name, category, FORMAT(price, 2) AS price
FROM product;


        -- (●'◡'●) with subquery  (●'◡'●)    

SELECT product_name, category, FORMAT(price, 2) AS price
FROM (
  SELECT product_name, category, price
  FROM product
) AS subquery;

-- 8)Display the product details without offers.
-- ans :

SELECT product_name, category, price
FROM product
WHERE offer =  null;

-- 9)Write a SQL query to display the first three characters of the title of products price greater than 2000, along with their offer code.
-- ans :

SELECT LEFT(product_name, 3) AS first_three_characters, offer
FROM product
WHERE price > 2000;

SELECT 
    SUBSTRING(product_name, 1, 3) AS first_three_chars,
    offer
FROM 
    product
WHERE 
    price > 2000;

-- 10)Display the product details, whose quantity is less than 2.
-- ans :

        -- (●'◡'●) without subquery  (●'◡'●)    

SELECT product_name, category, price, quantity
FROM product
WHERE quantity < 2;

        -- (●'◡'●) with subquery  (●'◡'●)    
SELECT *
FROM product
WHERE quantity IN (
  SELECT quantity
  FROM product
  WHERE quantity < 2
);













-- （*＾-＾*）  DATABASE CHANGE  （*＾-＾*）

-- file name : exam of DBMS

create table user(
  user_id int primary key,
  user_name varchar (20) not null,
  email varchar (50) not null unique,
  password varchar (8),
  gender char(1) check (gender in ('m', 'f')),
  city varchar (20),
  mobile bigint,
  zip_code varchar (6) check (length(zip_code) = 6)
  );
  
insert into user values(1,'dhruv','dhruv@gmail.com','dhruv@12','m','surat','9999999999','395006');
insert into user values(2,'jay','jay@gmail.com','jay@123','m','panjab','8888888888','395007');
insert into user values(3,'viken','viken@gmail.com','viken@12','m','surat','7777777777','395008');
insert into user values(4,'dhara','dhara@gmail.com','dhara@12','f','delhi','6666666666','395009');
insert into user values(5,'hitesh','hitesh@gmail.com','hitesh@1','m','surat','1111111111','395010');
insert into user values(6,'ashish','ashish@gmail.com','ashish@1','m','vapi','2222222222','395011');
insert into user values(7,'dev','dev@gmail.com','dev@13','m','delhi','3333333333','395012');
insert into user values(8,'devanshi','devanshi@gmail.com','devanshi','f','tarapur','7894562333','395015');


create table product
	(
	product_id int primary key,
	product_name varchar (20),
	offer decimal(8,2),
	description varchar (50),
	price decimal(10,2),
	category varchar (20) not null
);

insert into product values(101,'fen',10.50,'cool',25.00,'Electronics');
insert into product values(102,'pizaa',50.50,'testy',50.00,'food');
insert into product values(103,'iphone14',50.00,'nice phone',1000.00,'');
insert into product values(104,'bet',1.50,'beutiful',5.00,'Sports');
insert into product values(105,'earphone',10.50,'so cool',25.00,'Electronics');
insert into product values(106,'iphone14',100.00,'so cool',100.00,'');
insert into product values(107,null,100.00,'so cool',100.00,'Electronics');

create table my_order
	(
	my_order_id int primary key,
	product_id int,
	user_id int,
	date_of_my_order date,
	quantity int default(1),
	payment_method varchar (20),
	payment_id int,
	foreign key (user_id) references user(user_id),
	foreign key (product_id) references product(product_id),
	foreign key (payment_id) references Payment(payment_id)
);

insert into my_order values(101,106,1,'2003-11-27',1,'upi',1);
insert into my_order values(102,105,2,'2023-11-27',2,'cash',2);
insert into my_order values(103,104,3,'2022-01-16',3,'upi',3);
insert into my_order values(104,102,7,'2023-12-27',1,'cash',4);
insert into my_order values(105,101,5,'2023-04-24',2,'upi',5);
insert into my_order values(106,103,2,'2023-11-12',4,'cash',6);
insert into my_order values(107,103,2,NOW(),4,'cash',6);



create table Payment
	(
	payment_id int primary key,
	account_holder_name varchar(20) not null,
	account_no varchar (18)
);

insert into Payment value(1,'dhruv',123456789123456789);
insert into Payment value(2,'dhara',123457689451243768);
insert into Payment value(3,'jay',154594956543456789);
insert into Payment value(4,'viken',547894231423456789);
insert into Payment value(5,'hitesh',123456789114466557);
insert into Payment value(6,'ashish',541651323123456789);

CREATE TABLE customer (
  customer_id INT primary key,
  cust_name VARCHAR(20),
  city VARCHAR(20),
  grade char(1) check (grade in('A','B','c')),
  salesman_id INT,
  FOREIGN KEY (salesman_id) REFERENCES salesman (salesman_id)
);


insert into customer values(111,'dhruv','surat','B',001);
insert into customer values(112,'hitesh','surat','A',001);
insert into customer values(113,'ashish','vapi','A',002);
insert into customer values(114,'jay','panjab','C',003);
insert into customer values(115,'viken','surat','B',001);
insert into customer values(116,'dhara','delhi','C',004);

create table salesman
	(
	salesman_id int primary key auto_increment,
	salesman_name varchar(20),
	city varchar(20),
	commission decimal(5,2),
	index(salesman_id)
); 


insert into salesman values(001,'raj','surat',11.02);
insert into salesman values(002,'sirkit','vapi',14.21);
insert into salesman values(003,'muuna bhai','panjab',25.12);
insert into salesman values(004,'nirav','delhi',14.02);



-- [************************************************** first database  ********************************************* ]


-- [1].Display the user details with email_id and name whose city is “Delhi” .(-- Use subquery only)
-- ans :
select user_name,email from user where user_id in (select user_id from user where city='delhi');


-- [2].Display the product's minimum, maximum, and average price of each
-- category.
-- ans:

select min(price),max(price),avg(price) from product group by category;


-- [3].Display the user_name and order_amount of those who ordered on last 
-- day.
-- ans :

select user_name,quantity*price as amount from 
	My_order inner join product on(my_order.product_id = my_order.product_id) 
		inner join user on (my_order.user_id=user.user_id) 
			where date_of_my_order = (select date_of_my_order 
				from my_order 
					order by date_of_my_order desc limit 1
				);
-- [4]. Display the name of the category who having no any orders.
-- ans :

select category from product where product_name not in(select product_id from my_order where product_name = null );

-- [5].Write an SQL query to find the total number of orders for each product.
-- ans :

select count(*) number_of_orders from my_order group by product_id;

-- [6]. Demonstrate joining the user and product table with the help of inner join 
-- left join and right join. (with two different example)
-- ans1 :

select user_name,city,product_name from user inner join product on (user.user_id = product.user_id);

-- ans2 :
select user_name,city,product_name from user left outer join product on (user.user_id = product.user_id);

-- ***************************************************************************************************************************************************
-- ans3 :
select user_name,city,product_name from user right outer join product on (user.user_id = product.user_id);

SELECT
    user.user_id,
    user.user_name,
    product.product_id,
    product.product_name
FROM
    user
RIGHT JOIN
    product ON user.user_id = product.user_id;
-- ***************************************************************************************************************************************************
-- [7].Display user_name, id, city, email those users who have ordered ‘iPhone 14’.
-- ans :

select user.user_id,user_name,city,email 
	from my_order 
	inner join product on (product.product_id = My_order.product_id) 
	inner join user on (my_order.user_id = user.user_id) 
		where product_name = 'iphone14';

-- [8].Display name , customer city , salesman and commission who received 
-- commissions of more than 12% from the company.
select cust_name,customer.city,commission 
	from customer inner join salesman 
		on (salesman.salesman_id = customer.salesman_id) 
			where commission > 12.00;

-- [9]. Display customer name, customer city, salesman, salesman 
-- city ,commission who do not live in the same city where their customers 
-- live and have received a commission of more than 12% from the company.

-- ans :
SELECT cust_name, customer.city, salesman.city, commission
FROM customer
INNER JOIN salesman
ON (salesman.salesman_id = customer.salesman_id)
WHERE commission > 12.00;	






