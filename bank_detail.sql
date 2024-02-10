create database banks;
use banks;
CREATE TABLE BANK(
bank_ID numeric primary key,
bank_name varchar(20) not null,
bank_address varchar(20)
); 
INSERT INTO BANK VALUES(001,'SBI','Godha colony');
INSERT INTO BANK VALUES(002,'PNB','Rajwada');
INSERT INTO BANK VALUES(003,'MET','Geeta colony');
INSERT INTO BANK VALUES(004,'SWISS','Baker street');
INSERT INTO BANK VALUES(005,'NXI','Putin Hall');
INSERT INTO BANK VALUES(006,'INDIAN_BANK','VELLORE');
INSERT INTO BANK VALUES(007,'SBI','CHENNAI');
INSERT INTO BANK VALUES(008,'HFDC','HYDERABATH');
INSERT INTO BANK VALUES(009,'KARURVAISYA_BANK','KANCHIPURAM');
INSERT INTO BANK VALUES(010,'AXES_BANK','COIMBATTUR');
SELECT * FROM BANK ;
 
 CREATE TABLE BRANCH(
bank_ID numeric,
branch_ID numeric primary key,
branch_name varchar(20) not null,
branch_address varchar(20)); 
INSERT INTO BRANCH VALUES(001,101,'Delhi','Gandhi Nagar');
INSERT INTO BRANCH VALUES(002,102,'Punjab','Chandigarh');
INSERT INTO BRANCH VALUES(003,103,'M.P','Vijay Nagar');
INSERT INTO BRANCH VALUES(004,104,'Bangalore','Thullianadammm');
INSERT INTO BRANCH VALUES(005,105,'Assam','Kaziranga');
INSERT INTO BRANCH VALUES(006, 106,'CHENNAI','ANNA_NAGAR');
INSERT INTO BRANCH VALUES(007,107,'HYDERABAD','MADHAPUR');
INSERT INTO BRANCH VALUES(008,108,'MUMBAI','KER_NAGAR');
INSERT INTO BRANCH VALUES(009,109,'COIMBATORE','GANDIPURAM');
INSERT INTO BRANCH VALUES(010,110,'VELLORE','KATPADI');
SELECT * FROM BRANCH ;

CREATE TABLE ACCOUNT(
account_ID numeric primary key,
branch_ID numeric,
name varchar(20) not null,
account_type varchar(20) not null
); 
INSERT INTO ACCOUNT VALUES(201,101,'Rajeev','Salary account');
INSERT INTO ACCOUNT VALUES(202,102,'Ravnish','Saving h account');
INSERT INTO ACCOUNT VALUES(203,103,'Naseeb','Fixed_deposit_account');
INSERT INTO ACCOUNT VALUES(204,104,'Ashuish','Recurring deposit account');
INSERT INTO ACCOUNT VALUES(205,105,'Tanmay','closing_account');
INSERT INTO ACCOUNT VALUES(206,106,'MUKESH','saving_account');
INSERT INTO ACCOUNT VALUES(207,107,'RAJESH','Fixed_deposite_account');
INSERT INTO ACCOUNT VALUES(208,108,'RAM','Salary account');
INSERT INTO ACCOUNT VALUES(209,109,'KRISHNA','Fixed_depsit_account');
INSERT INTO ACCOUNT VALUES(210,110,'RIYA','Saving_account'); 
SELECT * FROM ACCOUNT ;

CREATE TABLE LOAN(
account_ID numeric,
loan_ID numeric primary key,
name varchar(20) not null,
loan_type varchar(20) not null,
loan_amount numeric
);
INSERT INTO LOAN VALUES(201,301,'Rajeev','Personal loan',10000);
INSERT INTO LOAN VALUES(202,302,'Ravnish','Home loan',20000);
INSERT INTO LOAN VALUES(203,303,'Naseeb','Car loan',15000);
INSERT INTO LOAN VALUES(204,304,'Ashish','Education loan',25000);
INSERT INTO LOAN VALUES(205,305,'Tanmay','Business loan',30000);
INSERT INTO LOAN VALUES(206,306,'MUKESH','Bike loan',80000);
INSERT INTO LOAN VALUES(207,307,'RAJESH','Home loan',60000);
INSERT INTO LOAN VALUES(208,308,'RAM','Business loan',70000);
INSERT INTO LOAN VALUES(209,309,'KRISHNA','Bike loan',10000);
INSERT INTO LOAN VALUES(210,3010,'RIYA','Business loan',20000);
SELECT * FROM LOAN ;
select * from LOAN where loan_amount=(select avg(loan_amount) from LOAN);
select  sum(loan_amount) from LOAN;

CREATE TABLE CLIENT(
account_ID numeric,
client_ID numeric primary key,
name varchar(20) not null,
client_address varchar(500) not null
); 
INSERT INTO CLIENT VALUES(201,401,'Rajeev','21,Gandhi Nagar');
INSERT INTO CLIENT VALUES(202,402,'Ravnish','16,Vijay Nagar');
INSERT INTO CLIENT VALUES(203,403,'Sumit','13,Geeta colony');
INSERT INTO CLIENT VALUES(204,404,'Naseeb','11, Savedh Nagar');
INSERT INTO CLIENT VALUES(205,405,'Tanmay','07,godha colony');
INSERT INTO CLIENT VALUES(206,406,'MUKESH','VELLORE');
INSERT INTO CLIENT VALUES(207,407,'RAJESH','CHENNAI');
INSERT INTO CLIENT VALUES(208,408,'RAM','HYDRABAD');
INSERT INTO CLIENT VALUES(209,409,'KRISHNA','KANCHIPURAM');
INSERT INTO CLIENT VALUES(210,410,'DIYA','COIMBATUR');
SELECT * FROM CLIENT ; 
show tables;
select *from bank;
select*from branch;
select bank.bank_ID,bank.bank_name,bank.bank_address from bank left join branch on bank.bank_id=branch.bank_id;