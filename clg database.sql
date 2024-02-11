create database clg_student;
USE clg_student;
--- student infermation computer science dept
create table bsc_cs (NAME varchar(20),REGNO varchar(20),DEPT varchar(20),YEAR numeric);
alter table bsc_cs change YEAR YEAR int;

select* from bsc_cs;
insert into bsc_cs values("Rohit","cs201901","computer_science",2019);
insert into bsc_cs values("sharma","cs201902","computer_science",2019);
insert into bsc_cs values("maynak","cs201903","computer_science",2019);
insert into bsc_cs values("Rohit","cs201904","computer_science",2019);
insert into bsc_cs values("agarwal","cs201905","computer_science",2019);
insert into bsc_cs values("pujara","cs201906","computer_science",2019);
insert into bsc_cs values("agarwal","cs201907","computer_science",2019);
insert into bsc_cs values("ram","cs201908","computer_science",2019);
insert into bsc_cs values("krishna","cs201909","computer_science",2019);
insert into bsc_cs values("priya","cs201910","computer_science",2019);
insert into bsc_cs values("monika","cs201911","computer_science",2019);
insert into bsc_cs values("andrew","cs201912","computer_science",2019);
insert into bsc_cs values("divya","cs201913","computer_science",2019);
insert into bsc_cs values("thiyau","cs201914","computer_science",2019);
 --- student  1st sem fees detail 
 create table cs_fees(NAME varchar(20),REGNO varchar(20),1stsem_fees int,paid_fees int, balance_fees int);
 alter table cs_fees add paid_date date;
 insert into cs_fees values("Rohit","cs201901",30000,10000,20000,"2019-02-01");
insert into cs_fees values("sharma","cs201902",30000,5000,25000,"2019-02-02");
insert into cs_fees values("mayanak","cs201903",30000,30000,0,"2019-02-02");
insert into cs_fees values("Rohit","cs201904",30000,1000,29000,"2019-02-03");
insert into cs_fees values("agarwal","cs201905",30000,10000,20000,"2019-02-09" );
insert into cs_fees values("pujara","cs201906",30000,28000,2000,"2019-02-11");
insert into cs_fees values("agarwal","cs201907",30000,22000,8000,"2019-02-25");
insert into cs_fees values("Ram","cs201908",30000,11000,19000,"2019-03-04");
insert into cs_fees values("krisha","cs201909",30000,7000,23000,"2019-03-12");
insert into cs_fees values("priya","cs201910",30000,30000,0,"2019-03-15");
insert into cs_fees values("monika","cs201911",30000,500,29500,"2019-03-22");
insert into cs_fees values("anndrew","cs201912",30000,10000,20000,"2019-03-27");
insert into cs_fees values("diya","cs201913",30000,14000,16000,"2019-04-03");
insert into cs_fees values("thiyau","cs201914",30000,26000,4000,"2019-04-09");
select* from cs_fees;

            --- student  1st  sub mark
            
create table 1sem_mark(NAME varchar(20),REGNO varchar(20),DEPT varchar(20),tamil int,english int,maths int,csc int,evs int);
alter table 1sem_mark  change csc cprogram int;
alter table 1sem_mark add total varchar(10) ;
alter table 1sem_mark change total total int;

alter table 1sem_mark add grade varchar(10);
select* from 1sem_mark;

insert into 1sem_mark values("Rohit","cs201901","computer_science",50,60,70,80,75, 335,"pass");
insert into 1sem_mark values("sharma","cs201902","computer_science",60,76,50,30,95, 311 ,"fail");
insert into 1sem_mark values("mayanak","cs201903","computer_science",100,40,77,85,65, 367,"pass");
insert into 1sem_mark values("Rohit","cs20194","computer_science",70,022,34,44,66, 236,"fail");
insert into 1sem_mark values("garwal","cs201905","computer_science",90,66,70,80,75, 381,"pass");
insert into 1sem_mark values("pujara","cs201906","computer_science",10,30,50,70,55, 215,"pass");
insert into 1sem_mark values("agarwal","cs201907","computer_science",60,70,100,80,75, 385,"pass");
insert into 1sem_mark values("ram","cs201908","computer_science",30,22,49,67,55,223 ,"pass");
insert into 1sem_mark values("krishna","cs201909","computer_science",60,92,89,77,65, 383,"pass");
insert into 1sem_mark values("krishna","cs201909","computer_science",60,92,89,77,65, 383,"pass");
insert into 1sem_mark values("priya","cs201910","computer_science",25,60,25,30,45, 185,"fail");
insert into 1sem_mark values("monika","cs201911","computer_science",50,60,75,47,45, 277,"pass");
insert into 1sem_mark values("andrew","cs201912","computer_science",25,20,15,22,25, 107,"fail");
insert into 1sem_mark values("diya","cs201913","computer_science",95,80,75,62,45, 357,"fail");
insert into 1sem_mark values("rohit","cs201914","computer_science",55,60,75,82,65, 337,"fail");
select sum(tamil)
from 1sem_mark
where REGNO="cs201901";
select *
from 1sem_mark
where grade="pass";
select *
from 1sem_mark
where grade="fail";
select count(*) from 1sem_mark where grade="pass";
select count(*) from 1sem_mark where grade="fail";
select * from 1sem_mark where total=(select max(total) from 1sem_mark);
select * from 1sem_mark where total=(select avg(total) from 1sem_mark);
select * from 1sem_mark where total=(select min(total) from 1sem_mark);
select NAME,count(NAME) from 1sem_mark group by NAME;
select NAME,avg(NAME) from 1sem_mark group by NAME;
select * from 1sem_mark
where total>200;
select*from 1sem_mark where  Name like'R%';
select * from 1sem_mark where tamil>40;
select * from 1sem_mark where english>40;
select * from 1sem_mark where maths>40;
select * from 1sem_mark where cprogram>40;
select * from 1sem_mark where evs>40;















            
            
           
  