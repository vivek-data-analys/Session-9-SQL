create database  flipkart_style ;
use flipkart_style;

create table  users (
users_id int primary key ,
users_name varchar (100) not null );

create table offers (
offers_id int primary key ,
offers_title varchar (100) not null );

insert into users(users_id ,users_name)
values 
(1, 'Rahul Patel'),
(2, 'Priya Shah'),
(3, 'Amit Patel'),
(4, 'Neha Mehta'),
(5, 'Vivek Panchal'),
(6, 'Riya Desai'),
(7, 'Karan Shah'),
(8, 'Pooja Patel'),
(9, 'Akash Mehta'),
(10, 'Sneha Joshi'),
(11, 'Rohit Desai'),
(12, 'Anjali Shah'),
(13, 'Dhruv Patel'),
(14, 'Komal Mehta'),
(15, 'Jay Panchal');

insert into offers(offers_id,offers_title)
values 
(101, '10% Off on Electronics'),
(102, '20% Off on Fashion'),
(103, '₹500 Off on Mobiles'),
(104, '30% Off on Shoes'),
(105, '15% Off on Home Appliances'),
(106, '₹300 Off on Grocery'),
(107, '25% Off on Beauty Products'),
(108, '10% Cashback on Payments'),
(109, '40% Off on Books'),
(110, '₹1000 Off on Laptops'),
(111, '20% Off on Watches'),
(112, '15% Off on Kitchen Items'),
(113, 'Free Delivery Offer'),
(114, '50% Off on Selected Items'),
(115, '₹200 Off on First Order');

select 
u.users_name ,
o.offers_title 
from users as u
cross join offers as o;

