--------------UC1---------------
create database Address_Book;
use Address_Book;

----------UC2------------
-----Creating a Table------ 
CREATE TABLE Address_Book(
FirstName char(20),
LastName char(20),
City char(15),
StateName char(20),
Zip int,
Phone varchar(10),
Email varchar(30)
);
select * from Address_Book;

--------UC3----------
-------Inserting values into a table--------
INSERT INTO Address_Book VALUES('Vishal','Singh','Mumbai','Maharashtra','400078','9930315160','vishalsingh@gmail.com');
INSERT INTO Address_Book VALUES('Himanshu','Kholiya','Nainital','Uttrakhand','262550','7002285211','himanshu@gmail.com');
INSERT INTO Address_Book VALUES('Omprakash','Khawshi','Pune','Maharashtra','607890','7637845674','om@gmail.com');
INSERT INTO Address_Book VALUES('Priyesh','Sharma','Kolkatta','Bengal','574895','9967899565','priyesh@gmail.com');
INSERT INTO Address_Book VALUES('Chandan','Yadav','Bengaluru','Karnataka','455454','9384903567','praveen@gmail.com');
SELECT * from Address_Book;

-------------UC4---------
-----Editing Details Using Name----------
UPDATE Address_Book SET Phone='7304383177' WHERE FirstName='Vishal';

--------UC5--------------
---Deleting a person using name-----
DELETE FROM Address_Book WHERE FirstName= 'Chandan';

-----------------UC6---------
----Retrieving Data by City or State-----
Select * from Address_Book WHERE City='Mumbai';
Select * from Address_Book WHERE StateName='Maharashtra';

------------UC7-----------
-----Size of Address book by City or State--------
Select COUNT(City) as City_Count FROM Address_Book;
Select COUNT(StateName) as State_Count FROM Address_Book;

------------UC8--------
-----Sorting data------
SELECT * FROM Address_Book ORDER BY FirstName;

---UC9:- Ability to identify each Address Book with name and Type.

--UC9.1:- Alter Address Book to add name and type.
alter table Address_Book add Name varchar(255),Type varchar(255);

select * from Address_Book;

--UC9.2:- Here the type could Family, Friends, Profession, etc.

update Address_Book set Name='ShreeRam';

update Address_Book set Type ='Family' where FirstName='Vishal';
select * from Address_Book;

update Address_Book set Type ='Friend' where FirstName='Himanshu'; 
select * from Address_Book;

--UC10:- Ability to get number of contact persons i.e. count by type.

select count(type) 
from Address_Book;

select Type, count(*) as TypeCount 
from Address_Book
group by Type;

--UC11:- Ability to add person to both Friend and Family.

insert into Address_Book(FirstName,LastName,City,StateName,Zip,Phone,Email,Name,Type) values('Sham','Kumar','Mumbai','Maharashtra','400105','8762498989','sham@gmail.com','ShamContact','Family');
select * from Address_Book;
