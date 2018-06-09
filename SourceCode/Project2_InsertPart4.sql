/*Project 2 Sonal Patil HealthCare Center Database*/
USE HealthCareCenter;

/*Inserting data into Patient, PatientPrimaryDoctor, PatientHealthInsurance, Visitors & VisitorsPhoto tables*/
INSERT INTO Patient(PatientID, SpouseName, PersonID, RoomID) VALUES
(1, 'Erica Lukasik', 6,  1),
(2, '',              7,  2),
(3, 'Joey Bachman',  8,  3),
(4, '',              9,  4),
(5, '',              10, 5);

INSERT INTO PatientPrimaryDoctor(EmployeeID, PatientID) VALUES -- many to many relation so linking table
(1,1),   
(2,1),
(2,2),
(2,3),
(4,5),
(2,5);

INSERT INTO PatientHealthInsurance(HealthInsuranceID, PatientID, CompnayName, Phone, CoverageAmount) VALUES
(1, 1, 'Aetna', '310-936-2258' , 1000),
(2, 1, 'Cigna', '310-694-8466' , 2000),
(3, 2, 'Aetna', '310-936-2258' , 1500),
(4, 3, 'Aetna', '310-936-2258' , 1000),
(5, 4, 'Aetna', '310-936-2258' , 1000),
(6, 5, 'Aetna', '310-936-2258' , 500);

INSERT INTO Visitors(VisitorID ,PatientID, VisitorName, DateOfBirth, Phone, EntryTime, ExitTime) VALUES
(1, 1, 'Monica Yaw',       CONVERT(DATE,'1990-04-08'), '513-418-1566', CONVERT(TIME,'01:11'), CONVERT(TIME,'06:00')),
(2, 2, 'Joey Rauser',      CONVERT(DATE,'1988-02-09'), '856-513-7024', CONVERT(TIME,'04:11'), CONVERT(TIME,'09:00')),
(3, 3, 'Chandller Estell', CONVERT(DATE,'1965-04-01'), '973-582-5469', CONVERT(TIME,'11:11'), CONVERT(TIME,'03:20')),
(4, 4, 'Ross Wide',        CONVERT(DATE,'2000-03-05'), '505-950-1763', CONVERT(TIME,'02:00'), CONVERT(TIME,'03:00')),
(5, 5, 'Rachel Funnell',   CONVERT(DATE,''),           '719-223-2074', CONVERT(TIME,'08:00'), CONVERT(TIME,'11:00'));

SET IDENTITY_INSERT VisitorPhoto ON;
INSERT INTO VisitorPhoto(VisitorID, VisitorPhoto) VALUES
(1, CONVERT(IMAGE,'E:/images/visitors/Monica.jpg')),
(2, CONVERT(IMAGE,'E:/images/visitors/Joey.jpg')),
(3, CONVERT(IMAGE,'E:/images/visitors/Chandller.jpg')),
(4, CONVERT(IMAGE,'E:/images/visitors/Ross.jpg')),
(5, CONVERT(IMAGE,'E:/images/visitors/Rachel.jpg'));
SET IDENTITY_INSERT VisitorPhoto OFF;

/*Comments - Here I have used DML statement Insert Into which allows me to enter data into health care center database tables*/

SELECT * FROM Patient;
SELECT * FROM PatientPrimaryDoctor;
SELECT * FROM PatientHealthInsurance;
SELECT * FROM Visitors;
SELECT * FROM VisitorPhoto; /*comments - here i am showing the newly inserted datat into tables*/