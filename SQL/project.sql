create database Liberary1;
use liberary1;

CREATE TABLE Book_Details  
(  
    ISBN_Code int PRIMARY KEY,  
    Book_Title varchar(100),  
    Language varchar(10),  
    Binding_Id int,  
    No_Copies_Actual int,  
    No_Copies_Current int,  
    Category_id int,  
    Publication_year int  
) ;

delete from Book_details where isbn_code='0006';
INSERT INTO Book_details  
VALUES('0006','Programming Concept','English',2,20,15,2,2006),('0002','Database','English',1,3,2,2,2005);  

CREATE TABLE Binding_details  
(  
    Binding_id int PRIMARY KEY,  
    Binding_Name varchar(50)  
);

INSERT INTO Binding_Details VALUES(1,'McGraw Hill'),(2,'BPB Publication');  

ALTER TABLE Book_details  
ADD CONSTRAINT Binding_ID_FK FOREIGN KEY(Binding_Id) REFERENCES Binding_Details(Binding_Id); 


select b.Book_Title, e.binding_name  
from Book_Details b, Binding_Details e  
where b.binding_id = e.binding_id;  


CREATE TABLE Category_Details  
(  
    Category_Id int PRIMARY KEY,  
    Category_Name varchar(50)  
);

INSERT INTO CATEGORY_DETAILS VALUES(1,'Database');  
INSERT INTO CATEGORY_DETAILS VALUES(2,'Programming Language');   

ALTER TABLE Book_details  
ADD CONSTRAINT Category_Id_FK FOREIGN KEY(Category_Id) REFERENCES Category_Details(Category_Id);

select b.Book_Title,e.Category_Name  
from Book_Details b,Category_Details e  
where b.binding_id = e.Category_id;  

CREATE TABLE Borrower_Details  
(  
    Borrower_Id int PRIMARY KEY,  
    Book_Id int,  
    Borrowed_From date,  
    Borrowed_TO date,  
    Actual_Return_Date date,  
    Issued_by int
    

);

drop table borrower_details;

Insert into BORROWER_DETAILS VALUES(4,0004,"2014-08-14","2014-08-20","2014-08-20",1),(3,6,"2014-08-2","2014-08-08","2014-08-10",2);  


ALTER TABLE Borrower_details ADD CONSTRAINT Book_Id_FK FOREIGN KEY(Book_Id) REFERENCES Book_Details(ISBN_Code);  

select Borrower_Details.Borrower_id,Book_Details.Book_title  
from Borrower_Details,Book_Details  
where Borrower_Details.book_id=Book_Details.ISBN_Code;  

CREATE TABLE Staff_Details  
(  
    Staff_Id int PRIMARY KEY,  
    Staff_Name varchar(50),  
    Password varchar(16),  
    Is_Adminbinary float,  
    Designation varchar(20)  
);

Insert into STAFF_DETAILS values (1,'Tarek Hossain','1234asd',0,'Lib_mgr');  
Insert into STAFF_DETAILS values (2,'Md.Kishor Morol','iloveyou',0,'Lib_clr');    

Create TABLE Student_Details  
(  
    Student_Id varchar(10) PRIMARY KEY,  
    Student_Name varchar(50),  
    Sex Varchar(20),  
    Date_Of_Birth date,  
    Borrower_Id int,  
    Department varchar(10),  
    contact_Number varchar(11)
    
     
);  

drop table student_details;
Insert into STUDENT_DETAILS values ('13-23059-1','Ravi','Male','1995-1O-05',8,'CSCE','01681849871');  
Insert into STUDENT_DETAILS values ('13-23301-1','Satish','Male','1994-01-03',9,'CSCE','01723476554');  

select * from student_details;


ALTER TABLE student_details  
ADD CONSTRAINT borrower_id_FK FOREIGN KEY(Borrower_Id) REFERENCES Borrower_Details(Borrower_Id); 

select student.student_id, student.student_name, book.Book_Title, staff.staff_name, b.Borrowed_To  
from student_Details student, Staff_Details staff, Borrower_Details b, book_details book  
where student.Borrower_id = b.Borrower_id and book.ISBN_Code = b.book_id and b.Issued_by = staff.Staff_id;


Create Table Shelf_Details  
(  
    Shelf_id int PRIMARY KEY,  
    Shelf_No int,  
    Floor_No int  
);  

Insert into Shelf_Details Values(1, 1, 1);  
Insert into Shelf_Details Values(2, 2, 10001);  
Insert into Shelf_Details Values(3, 1, 10002);  

ALTER TABLE Book_Details  
ADD(Shelf_Id int);  
  
UPDATE Book_Details set Shelf_Id = 1  
where ISBN_CODE = 4;  
  
UPDATE Book_Details set Shelf_Id = 2  
where ISBN_CODE = 6;  
  
ALTER TABLE Book_Details  
ADD CONSTRAINT Shelf_Id_FK FOREIGN KEY(Shelf_Id) REFERENCES Shelf_Details(Shelf_Id);  

select student.student_id, student.student_name, book.Book_Title, staff.staff_name, b.Borrowed_To, shelf.shelf_No  
from student_Details student, Staff_Details staff, Borrower_Details b, book_details book, Shelf_Details shelf  
where student.Borrower_id = b.Borrower_id and book.ISBN_Code = b.book_id and b.Issued_by = staff.Staff_id and book.Shelf_Id = shelf.Shelf_Id;


