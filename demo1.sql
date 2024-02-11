create database mysqldta;
use mysqldta;
show databases;
create table studentable(
student_id int,
student_name varchar(100),
coursce_name varchar(40)
);
select*from studentable;
show tables;
describe studentable;
alter table studentable add email varchar(100);
insert into studentable values(2,'ram','c1002','ram@gmail.com');
insert into studentable values(3,'mohu','c1003','mobu@gmail.com');
insert into studentable values(4,'kridh','c1004','kridh@gmail.com');
insert into studentable values(5,'nuru','c1005','nuru@gmail.com');
insert into studentable values(6,'looka','c1006','looka@gmail.com'insert into studentable values(1,'prakash','c1001','prakash@gmail.com');
);
insert into studentable values(7,'erubu','c1007','erubu@gmail.com');
insert into studentable values(8,'gwen','c1008','gwen@gmail.com');
select*from studentale;
select student_name,email from studentable
where student_name ="ram";
 update studentable
set student_name ="jue";
delete from studentable;
set student_name='ram';
show tables;
select *from studentable ;
select * from studentable
where coursce_name="c1004";
-- and operator--
select *from studentable where  student_id=3 and coursce_name="c1003";
select * from studentable where student_id=5 or course_name="c1005";
select * from studentable where course_name in ("c1003","c1005");
--- patten match---
insert into studentable values(4,'sanjana','c1004','sanjana@gmail.com');
insert into studentable values(5,'nirajan','c1005','nirajan@gmail.com');
insert into studentable values(6,'mukash','c1006','mukesh@gmail.com');
insert into studentable values(7,'rajan','c1007','rajan@gmail.com');
insert into studentable values(8,'tom','c1008','tom@gmail.com');
insert into studentable values(9,'yoki','c1009','yoki8@gmail.com');

select*from studentable;
select*from studentable where email like '%gmail.com';






