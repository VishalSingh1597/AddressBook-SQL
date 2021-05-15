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