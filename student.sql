create database db;
use db;
use d;
CREATE TABLE STUDENT ( 
ID INT NOT NULL,
NAME VARCHAR (20) NOT NULL,  
AGE INT,                 
bank CHAR (25),  
PRIMARY KEY (ID)  
);  
select * from STUDENT;
INSERT into STUDENT values(1, "Om", 22, "HDFC");
INSERT into STUDENT values(2, "Karthik", 22, "AXIS");
INSERT into STUDENT values(3, "Suhas", 22, "HDFC");

create view a as select ID, address, name, age from STUDENT;

DELIMITER &&
CREATE procedure get_c()
begin
select * from STUDENT where name="Om";
end &&

CREATE TABLE BANK ( 
bank VARCHAR (20) NOT NULL,  
ACCNO INT                      
);  

select * from BANK;
INSERT into BANK values("HDFC", 1010);
select * from BANK;
call get_c();


select * from a;

select STUDENT.NAME ,BANK.ACCNO 
from STUDENT , BANK  where  STUDENT.bank=BANK.bank;
 

use address;
select * from address;







