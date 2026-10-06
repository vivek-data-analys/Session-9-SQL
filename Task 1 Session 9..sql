create database influencers ;
use influencers ;

create table influencers (
influencers_id int primary key ,
influencers_name varchar (100) not null,
city varchar (100) not null );


create table brand (
brand_id int primary key ,
brands_name varchar (100) not null,
brands_city varchar (100) not null ,
influencers_id int ,foreign key (influencers_id) references  influencers (influencers_id)
);

insert into influencers (influencers_id,influencers_name,city)
values 

(1, 'Rahul Sharma', 'Ahmedabad'),
(2, 'Priya Patel', 'Surat'),
(3, 'Amit Shah', 'Vadodara'),
(4, 'Neha Joshi', 'Rajkot'),
(5, 'Karan Mehta', 'Ahmedabad'),
(6, 'Riya Desai', 'Gandhinagar'),
(7, 'Vivek Patel', 'Surat'),
(8, 'Anjali Shah', 'Vadodara'),
(9, 'Harsh Trivedi', 'Rajkot'),
(10, 'Pooja Patel', 'Ahmedabad'),
(11, 'Yash Mehta', 'Gandhinagar'),
(12, 'Sneha Desai', 'Surat'),
(13, 'Dhruv Shah', 'Vadodara'),
(14, 'Komal Joshi', 'Rajkot'),
(15, 'Manav Patel', 'Ahmedabad');

insert into brand (brand_id,brands_name,brands_city,influencers_id)
values
(101, 'Nike', 'Ahmedabad', 1),
(102, 'Adidas', 'Surat', 2),
(103, 'Puma', 'Vadodara', 3),
(104, 'Pepsi', 'Rajkot', 4),
(105, 'Samsung', 'Ahmedabad', 5),
(106, 'Coca Cola', 'Gandhinagar', 6),
(107, 'Apple', 'Surat', 7),
(108, 'OnePlus', 'Vadodara', 8),
(109, 'boAt', 'Rajkot', 9),
(110, 'Levis', 'Ahmedabad', 10),
(111, 'Lenskart', 'Gandhinagar', 11),
(112, 'Mamaearth', 'Surat', 12),
(113, 'Zara', 'Vadodara', 13),
(114, 'H&M', 'Rajkot', 14),
(115, 'Myntra', 'Ahmedabad', 15);

select 
i.influencers_name ,
b.brands_name,
i.city
from influencers as i
left join brand as b 
on b.influencers_id = i.influencers_id

union 
select 
i.influencers_name ,
b.brands_name,
i.city
from influencers as i
right join brand as b 
on b.influencers_id = i.influencers_id;


