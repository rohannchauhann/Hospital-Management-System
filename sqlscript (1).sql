REM   Script: hospitall
REM   hospital mangement system

Create table Doctor 
( 
DoctorID number primary key, 
FirstName varchar2(20), 
LastName varchar2(20), 
Gender varchar2(8), 
Designation varchar(25), 
Contact number 
);

Create table Patient 
( 
PatientID number primary key, 
FirstName varchar2(20) not null, 
MiddleName varchar2(20), 
LastName varchar2(20), 
DOB date not null, 
Gender varchar2(8) not null, 
PhoneNumber number not null, 
EmailID varchar2(45), 
Address varchar2(50) not null, 
DoctorID number not null, 
foreign key(DoctorID) references Doctor(DoctorID) on delete cascade 
);

Create table PatientReg 
( 
RegNo number primary key, 
RoomNo number, 
Height number, 
Weight number, 
BloodGroup varchar2(4), 
NurseAppointed varchar2(50), 
AdmittedOn date not null, 
DepartedOn date, 
PatientID number not null, 
foreign key(PatientID) references Patient(PatientID) on delete cascade 
);

Create table Report 
( 
ReportNo number primary key, 
ReportDate date, 
Daignosis varchar2(50), 
Remark varchar2(30), 
Other varchar2(30), 
PatientID number not null, 
foreign key(PatientID) references Patient(PatientID) on delete cascade 
);

Create table Billing 
( 
BillingID number primary key, 
DOP date, 
PatientName varchar2(45), 
Amount number, 
PatientID number not null, 
foreign key(PatientID) references Patient(PatientID) on delete cascade 
);

Desc Doctor


Desc Patient


Desc PatientReg


Desc Report


Desc Billing


Insert into Doctor 
values(1001, 'Farhan', 'Ali', 'Male', 'Depatment Head', '7607869863');

commit


Insert into Doctor 
values(1002, 'Ajmal', 'Hayat', 'Male', 'Depatment Head', '7607869898');

commit


Insert into Doctor 
values(1003, 'Sidra', 'Kaeem', 'Female', 'Head', '7607869878');

commit


Insert into Doctor 
values(1004, 'Sara', 'Rashid', 'Female', 'Head', '7607869867');

commit


Insert into Doctor 
values(1005, 'Palwasha', 'Rashid', 'Female', 'Head', '7607869845');

commit


Insert into Doctor 
values(1006, 'Mowazzam', 'Ali', 'Male', 'Doctor', '7607869809');

commit


Insert into Doctor 
values(1007, 'Ahmad', 'Saleem', 'Male', 'Doctor', '7607869870');

commit


Insert into Doctor 
values(1008, 'Ajmat', 'Kaeem', 'Male', 'Doctor', '7607869810');

commit


Insert into Doctor 
values(1009, 'Farhan', 'Hayat', 'Male', 'Surgeon', '7607869823');

commit


Insert into Doctor 
values(1010, 'Sara', 'Lance', 'Female', 'Surgeon', '7607869861');

commit


Insert into Patient 
values(2001, 'Leroy', 'Jethro', 'Gibbs', date'1998-03-12', 'Male', 8907865987, 'ljgibbs@gmail.com', 'Mumbai', 1007);

commit


Insert into Patient(PatientID, FirstName, LastName, DOB, Gender, PhoneNumber, EmailID, Address, DoctorID) 
values(2002, 'Timothy', 'Macgee', date'1997-08-22', 'Male', 8907865987, 'timmacgee@gmail.com', 'Mumbai', 1003);

commit


Insert into Patient(PatientID, FirstName, LastName, DOB, Gender, PhoneNumber, EmailID, Address, DoctorID) 
values(2003, 'Ziva', 'David', date'1999-03-12', 'Female', 8907865987, 'zivadavid@gmail.com', 'Mumbai', 1004);

commit


Insert into Patient(PatientID, FirstName, LastName, DOB, Gender, PhoneNumber, EmailID, Address, DoctorID) 
values(2004, 'Jason', 'Bourne', date'1997-03-12', 'Male', 8907865987, 'jasonbourne@gmail.com', 'Mumbai', 1005);

commit


Insert into Patient(PatientID, FirstName, LastName, DOB, Gender, PhoneNumber, EmailID, Address, DoctorID) 
values(2005, 'Elle', 'Bishop', date'2000-03-12', 'Female', 8907865987, 'ellebishop@gmail.com', 'Mumbai', 1010);

commit


Insert into Patient(PatientID, FirstName, LastName, DOB, Gender, PhoneNumber, EmailID, Address, DoctorID) 
values(2006, 'Tony', 'Dinozzo', date'2001-03-12', 'Male', 8907865987, 'anthonydinozzo@gmail.com', 'Mumbai', 1002);

commit


Insert into Patient(PatientID, FirstName, LastName, DOB, Gender, PhoneNumber, EmailID, Address, DoctorID) 
values(2007, 'Gaurav', 'Singh', date'1998-08-03', 'Male', 8907865987, 'gauravsingh@gmail.com', 'Mumbai', 1009);

commit


Insert into Patient(PatientID, FirstName, LastName, DOB, Gender, PhoneNumber, EmailID, Address, DoctorID) 
values(2008, 'Shanvi', 'Rai', date'2000-08-02', 'Female', 8907865987, 'shanvirai@gmail.com', 'Mumbai', 1006);

commit


Insert into Patient 
values(2009, 'Avinash', 'Kumar', 'Yadav', date'1995-05-15', 'Male', 8907865987, 'avinashsingh@gmail.com', 'Mumbai', 1004);

commit


Insert into Patient(PatientID, FirstName, LastName, DOB, Gender, PhoneNumber, EmailID, Address, DoctorID) 
values(2010, 'Abhishek', 'Yadav', date'2000-06-12', 'Male', 8907865987, 'abhiyadav@gmail.com', 'Mumbai', 1001);

commit


Insert into PatientReg 
values(40001, 101, 167, 57, 'O+', 'Fatima', date'2021-09-23', date'2021-09-23', 2001);

commit


Insert into PatientReg 
values(40002, 504, 169, 58, 'O+', 'Hafeez', date'2021-05-13', date'2021-07-13', 2002);

commit


Insert into PatientReg 
values(40003, 103, 159, 54, 'O+', 'Basim', date'2021-07-15', date'2021-07-15', 2003);

commit


Insert into PatientReg 
values(40004, 105, 161, 53, 'AB-', 'Tahir', date'2021-01-09', date'2021-01-09', 2004);

commit


Insert into PatientReg 
values(40005, 701, 163, 52, 'AB+', 'Ahmad', date'2021-04-08', date'2021-06-08', 2005);

commit


Insert into PatientReg 
values(40006, 702, 158, 55, 'A+', 'Fazal', date'2021-09-05', date'2021-10-05', 2006);

commit


Insert into PatientReg 
values(40007, 703, 165, 58, 'B+', 'Fatima', date'2021-09-02', date'2021-10-02', 2007);

commit


Insert into PatientReg 
values(40008, 109, 158, 59, 'B-', 'Ahmad', date'2021-09-03', date'2021-09-03', 2008);

commit


Insert into PatientReg 
values(40009, 501, 162, 57, 'A-', 'Tahir', date'2021-09-18', date'2021-11-18', 2009);

commit


Insert into PatientReg 
values(40010, 705, 166, 58, 'O-', 'Hafeez', date'2021-09-13', date'2021-11-13', 2010);

commit


Insert into Report 
values(101, date'2021-09-23', 'Fever', 'Well', 'Not admit', 2001);

commit


Insert into Report 
values(102, date'2021-05-13', 'Heart Problem', 'Serious', 'Admit', 2002);

commit


Insert into Report 
values(103, date'2021-07-15', 'Sugar Problem', 'Well', 'Diet', 2003);

commit


Insert into Report 
values(104, date'2021-01-09', 'Kidney Problem', 'Serious', 'Diet', 2004);

commit


Insert into Report 
values(105, date'2021-04-08', 'Heartattack', 'Bad', 'Operation', 2005);

commit


Insert into Report 
values(106, date'2021-09-05', 'Eye Problem', 'Lowsight', 'Operation', 2006);

commit


Insert into Report 
values(107, date'2021-09-02', 'Eye Problem', 'Lowsight', 'Operation', 2007);

commit


Insert into Report 
values(108, date'2021-09-03', 'Headache', 'Well', 'Medicine', 2008);

commit


Insert into Report 
values(109, date'2021-09-18', 'Heart Problem', 'Serious', 'Admit', 2009);

commit


Insert into Report 
values(110, date'2021-09-13', 'Liver Problem', 'Serious', 'Operation', 2010);

commit


Insert into Billing 
values(801, date'2021-09-23', 'leroy Jethro Gibbs', 900, 2001);

commit


Insert into Billing 
values(802, date'2021-07-13', 'Timothy Mcgee', 5000, 2002);

commit


Insert into Billing 
values(803, date'2021-07-15', 'Ziva David', 500, 2003);

commit


Insert into Billing 
values(804, date'2021-01-09', 'Jason Bourne', 700, 2004);

commit


Insert into Billing 
values(805, date'2021-06-08', 'Elle Bishop', 10000, 2005);

commit


Insert into Billing 
values(806, date'2021-10-05', 'Tony Dinozzo', 7000, 2006);

commit


Insert into Billing 
values(807, date'2021-10-02', 'Gaurav Singh', 7000, 2007);

commit


Insert into Billing 
values(808, date'2021-09-03', 'Shanvi Rai', 500, 2008);

commit


Insert into Billing 
values(809, date'2021-11-18', 'Avinash Kumar Yadav', 5000, 2009);

commit


Insert into Billing 
values(810, date'2021-11-13', 'Abhishek Yadav', 7000, 2010);

commit


Select * from Doctor;

Select * from Patient;

Select * from PatientReg;

Select * from Report;

Select * from Billing;

exec savepoint sp1


Delete from Patient where PATIENTID = 2010;

Select * from Patient;

Select * from PatientReg;

Select * from Report;

Select * from Billing;

exec savepoint sp2


Rollback to sp1


Select * from Patient;

Select * from PatientReg;

Select * from Report;

Select * from Billing;

Select * from Billing  
where Amount is ( 
Select Max(Amount) from Billing 
);

Select *  
From Patient 
INNER JOIN PatientReg ON Patient.PatientID = PatientReg.PatientID;

Select Patient.FirstName, Patient.Middlename, Patient.LastName, Patient.DOB, Patient.Gender, Patient.PhoneNumber, Patient.EmailID, Patient.Address, PatientReg.PatientID  
From Patient 
LEFT JOIN PatientReg ON Patient.PatientID = PatientReg.PatientID;

Select PatientReg.RegNo, PatientReg.RoomNo, PatientReg.Height, PatientReg.Weight, PatientReg.BloodGroup, PatientReg.NurseAppointed, PatientReg.AdmittedOn, Patient.PatientID 
FROM Patient 
RIGHT JOIN PatientReg ON Patient.PatientID = PatientReg.PatientID;

Select *  
From Patient 
FULL OUTER JOIN PatientReg ON Patient.PatientID = PatientReg.PatientID;

CREATE OR REPLACE TRIGGER tag  
  BEFORE  
    INSERT OR  
    UPDATE OF Designation, Contact OR  
    DELETE  
  ON Doctor  
BEGIN  
  CASE  
    WHEN INSERTING THEN  
      DBMS_OUTPUT.PUT_LINE('Inserting a New Data in Doctor Table');  
    WHEN UPDATING('Designation') THEN  
      DBMS_OUTPUT.PUT_LINE('Updating Designation in Doctor Table');  
    WHEN UPDATING('Contact') THEN  
      DBMS_OUTPUT.PUT_LINE('Updating Contact in Doctor Table');  
    WHEN DELETING THEN  
      DBMS_OUTPUT.PUT_LINE('Deleting Data from Doctor Table');  
  END CASE;  
END;  
 
Insert into Doctor  
values(1011, 'Dakota', 'Johnson', 'Female', 'Doctor', '9452376845') 
 
Update Doctor  
Set Designation = 'Surgeon'  
where DoctorID = 1011 
 
Update Doctor  
Set Contact = 7893458567  
where DoctorID = 1011 
 
Delete from Doctor  
where DoctorID =1011 
 
 
------------------------------- Exception Handling -------------------------- 
 
DECLARE  
Sample_exception EXCEPTION;  
PROCEDURE nested_block  
IS  
BEGIN  
  Dbms_output.put_line('Inside nested block');  
  Dbms_output.put_line('Raising sample_exception from nested block');  
  RAISE sample_exception;   
    EXCEPTION WHEN sample_exception   
    THEN   
    Dbms_output.put_line ('Exception captured in nested block. Raising to main block');  
END;  
BEGIN  
  Dbms_output.put_line('Inside main block');  
  Dbms_output.put_line('Calling nested block');  
  Nested_block;  
  EXCEPTION WHEN sample_exception THEN	  
     Dbms_output.put_line ('Exception captured in main block');  
END;  
 

/

Select *  
From Patient 
INNER JOIN PatientReg ON Patient.PatientID = PatientReg.PatientID;

Select Patient.FirstName, Patient.Middlename, Patient.LastName, Patient.DOB, Patient.Gender, Patient.PhoneNumber, Patient.EmailID, Patient.Address, PatientReg.PatientID  
From Patient 
LEFT JOIN PatientReg ON Patient.PatientID = PatientReg.PatientID;

Select PatientReg.RegNo, PatientReg.RoomNo, PatientReg.Height, PatientReg.Weight, PatientReg.BloodGroup, PatientReg.NurseAppointed, PatientReg.AdmittedOn, Patient.PatientID 
FROM Patient 
RIGHT JOIN PatientReg ON Patient.PatientID = PatientReg.PatientID;

Select *  
From Patient 
FULL OUTER JOIN PatientReg ON Patient.PatientID = PatientReg.PatientID;

