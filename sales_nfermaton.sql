create database sales_infermation;
use sales_infermation;
create table sales_order(Order_No int,Product_no int,Client_No int,Address varchar(20), DATE date, Status varchar(20),Salesman_No int);
insert into sales_order values(101,123,143,'vellore','2019-02-01','delivered',110);
insert into sales_order values(102,124,102,'walaja','2019-04-19','delivered',111);
insert into sales_order values(103,125,103,'kanchi','2019-05-01','delivered',112);
insert into sales_order values(104,124,123,'cheyyar','2019-06-19','delivered',114);
insert into sales_order values(105,123,150,'arcot','2019-06-19','delivered',115);
insert into sales_order values(106,126,143,'chennai','2019-07-01','delivered',116);
insert into sales_order values(107,127,144,'benglore','2019-07-11','delivered',117);
insert into sales_order values(108,128,149,'coimbatore','2019-08-06','delivered',118);
insert into sales_order values(109,127,158,'salem','2019-08-11','delivered',119);
insert into sales_order values(110,129,154,'ranipet','2019-08-12','delivered',120);
select* from sales_order;
select* from sales_order where order_No>101;
select count(*) from sales_order;
select* from sales_order where Address in("walaja","benglore","salem");
select * from sales_order order by Address;
---- feedback
create table feedback_order(FeedbackID int,feedback varchar(30),Sales_order_no int,prodect_No int);
insert into feedback_order values(1,"Good",101, 123);
insert into feedback_order values(2,"not_upto_the_standard",102, 124);

insert into feedback_order values(3,"its_ok",103, 125);
insert into feedback_order values(4,"Good",104, 126);
insert into feedback_order values(5,"bad",105, 127);
insert into feedback_order values(6,"its_ok",106, 128);
insert into feedback_order values(7,"not_upto_the_standard",107, 129);
insert into feedback_order values(8,"worst",108, 130);
insert into feedback_order values(9,"Good",109, 131);
insert into feedback_order values(10,"Good",110, 132);
select* from feedback_order;
select * from feedback_order where feedback ="good";
---- detail
create table sales_order_detail(S_NO int,prod_No varchar(10),order_qty int,profit_per int,sell_price int,Name varchar(20));
alter table sales_order_detail add desc_ varchar(30);
insert into sales_order_detail values(101,'ws001',20,5,15,'suresh' ,'washing_soap');
insert into sales_order_detail values(102,'bs001',100,10,25,'dhatkal','bathing_soap');
insert into sales_order_detail values(103,'NO001',200,25,60,'sheshu','Noodles');
insert into sales_order_detail values(104,'ST001',75,30,20,'sankar','salt');
insert into sales_order_detail values(105,'sp001',30,20,15,'dina','sambar_powder');
insert into sales_order_detail values(106,'IP001',50,15,45,'rajesh','Idly_powder');
insert into sales_order_detail values(107,'tp001',30,25,5,'jeeva','toot_pate');
insert into sales_order_detail values(108,'co001',23,54,65,'prabu','cooking_oil');
insert into sales_order_detail values(109,'dl001',29,53,75,'arun','dall');
insert into sales_order_detail values(110,'cp001',20,5,15,'ram','cofee_powder');
select* from sales_order_detail;
select avg(order_qty) from sales_order_detail;
select max(order_qty) from sales_order_detail;
select min(order_qty) from sales_order_detail;
select sum(order_qty) from sales_order_detail;
select avg(profit_per) from sales_order_detail;
select max(profit_per) from sales_order_detail;
select min(profit_per) from sales_order_detail;
select sum(profit_per) from sales_order_detail;
select avg(sell_price) from sales_order_detail;
select max(sell_price) from sales_order_detail;
select min(sell_price) from sales_order_detail;
select sum(sell_price) from sales_order_detail;
--- 
create table sales_detail (S_NO int,Prod_No int,Proft_per int,sell_price int,sell_price50 int,sell_price150 int);
alter table sales_detail change Prod_No Prod_No varchar(10);
insert into sales_detail values(101,'ws001',5,15,750,2250);
insert into sales_detail values(102,'bs001',10,25,1250,3750);
insert into sales_detail values(103,'NO001',25,60,3000,9000);
insert into sales_detail values(104,'ST001',30,25,1250,3750);
insert into sales_detail values(105,'sp001',20,15,750,2250);
insert into sales_detail values(106,'ip001',15,45,2250,6750);
insert into sales_detail values(107,'tp001',25,5,1500,750);
insert into sales_detail values(108,'ws001',54,65,1150,9750);
insert into sales_detail values(109,'dl001',53,75,1450,11250 );
insert into sales_detail values(110,'cp001',5,15,250,2250);
select* from sales_detail;
select* from sales_detail where proft_per>50;
select count(*) from sales_detail;
select avg(proft_per) from sales_detail;
select max(proft_per) from sales_detail;
select min(proft_per) from sales_detail;


select avg(sell_price) from sales_detail;
select max(sell_prce) from sales_detail;
select min(sell_price) from sales_detail;
select sum(sell_price) from sales_detail;

select avg(sell_price50) from sales_detail;
select max(sell_price50) from sales_detail;
select min(sell_price50) from sales_detail;
select sum(sell_price50) from sales_detail;

select avg(sell_price150) from sales_detail;
select max(sell_price150) from sales_detail;
select min(sell_price150) from sales_detail;
select sum(sell_price150) from sales_detail;

select S_NO,prod_No,proft_per,sell_price from sales_detail;

select S_NO,prod_No,proft_per,sell_price from sales_detail where proft_per between 20 and 30;

select prod_No,Name from  sales_order_detail where Name like '_h%';
select prod_No,Name from  sales_order_detail where Name like '%h%';
  
select * from sales_detail   join sales_order 











































