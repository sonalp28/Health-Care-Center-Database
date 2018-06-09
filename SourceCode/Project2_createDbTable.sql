/*Project 2 Sonal Patil HealthCare Center Database*/

USE HealthCareCenter;

CREATE TABLE PersonInfo
(PersonID  INT         PRIMARY KEY,
 FirstName VARCHAR(20) NOT NULL,
 LastName  VARCHAR(20) NOT NULL,
 Email     VARCHAR(50) NULL,
 SSN       VARCHAR(9)  NOT NULL CHECK (SSN IS NOT NULL),
 Phone     VARCHAR(30) NOT NULL);

CREATE TABLE PersonAddressInfo
(AddressID    INT         PRIMARY KEY,
 PersonID     INT         NOT NULL,
 AddressType  VARCHAR(20) NOT NULL,
 AddressLine1 VARCHAR(50) NOT NULL,
 AddressLine2 VARCHAR(50) NULL,
 City         VARCHAR(50) NULL,
 State        CHAR(2)     NOT NULL,
 ZipCode      VARCHAR(20) NULL);

CREATE TABLE Employee
(EmployeeID      INT         PRIMARY KEY,
 PersonID        INT         NOT NULL,
 CurrentJobTitle VARCHAR(50) NOT NULL,
 WorkSchedule    VARCHAR(20) NOT NULL,
 ContractType    VARCHAR(20) NOT NULL,
 ContractTerm    VARCHAR(20) NOT NULL);

CREATE TABLE EmployeeOfficeInfo
(EmployeeID       INT         PRIMARY KEY IDENTITY(1,1),
 OfficeNumber     INT         NOT NULL CHECK (OfficeNumber > 0),
 BuildingLocation VARCHAR(50) NOT NULL,
 DepartmentName   VARCHAR(20) NOT NULL,
 OfficePhone      VARCHAR(30) NOT NULL);

CREATE TABLE EmployeeSalaryInfo
(EmployeeID     INT         PRIMARY KEY IDENTITY(1,1), 
 SalaryAmount   MONEY       NOT NULL DEFAULT 0 CHECK (SalaryAmount >= 0),
 BenefitsInfo   VARCHAR(50) NULL, 
 BenefitsAmount MONEY       NULL DEFAULT 0);

CREATE TABLE EmploymentHistory
(EmploymentHistoryID INT PRIMARY KEY,
 EmployeeID          INT NOT NULL,
 PastJobTitle        VARCHAR(20) NOT NULL,
 Reviews             VARCHAR(50) NULL);

CREATE TABLE Patient
(PatientID  INT PRIMARY KEY,
 SpouseName VARCHAR(50) NULL,
 PersonID   INT NOT NULL,
 RoomID     INT NOT NULL);

CREATE TABLE PatientRoom
(RoomID	      INT         PRIMARY KEY,
 Status       VARCHAR(20) NOT NULL,
 ScheduleInfo VARCHAR(50) NOT NULL);
 
CREATE TABLE RoomInfo
(RoomID           INT         PRIMARY KEY IDENTITY(1,1),
 RoomType         VARCHAR(20) NOT NULL,
 NumberOfBeds     INT         NOT NULL,
 RoomNumber       INT         NOT NULL CHECK (RoomNumber > 0),
 BuildingLocation VARCHAR(50) NOT NULL);

CREATE TABLE RoomMedicalDeviceInfo
(DeviceID   INT         PRIMARY KEY,
 RoomID     INT         NOT NULL,
 DeviceName VARCHAR(30) NOT NULL,
 DeviceInfo VARCHAR(50) NULL);

CREATE TABLE PatientHealthInsurance
(HealthInsuranceID INT         PRIMARY KEY,
 PatientID         INT         NOT NULL,
 CompnayName       VARCHAR(30) NOT NULL,
 Phone             VARCHAR(30) NOT NULL,
 CoverageAmount    MONEY       NOT NULL DEFAULT 0 CHECK (CoverageAmount >= 0));

CREATE TABLE Visitors
(VisitorID INT PRIMARY KEY,
 PatientID   INT         NOT NULL,
 VisitorName VARCHAR(50) NOT NULL,
 DateOfBirth DATE        NULL,
 Phone       VARCHAR(30) NULL, 
 EntryTime   TIME(4)     NOT NULL,
 ExitTime    TIME(4)     NOT NULL);

CREATE TABLE VisitorPhoto
(VisitorID    INT            PRIMARY KEY IDENTITY(1,1),
 VisitorPhoto VARBINARY(MAX) NOT NULL);

CREATE TABLE PatientBills
(BillID        INT         PRIMARY KEY,
 PatientID     INT         NOT NULL,
 Visits        INT         NOT NULL CHECK (Visits > 0),
 Payor         VARCHAR(20) NOT NULL,
 PaymentMethod VARCHAR(20) NOT NULL,
 TotalAmount   MONEY       NOT NULL DEFAULT 0 CHECK (TotalAmount >= 0),
 AmountPaid    MONEY       NOT NULL DEFAULT 0 CHECK (AmountPaid >= 0));

CREATE TABLE Items
(BillID          INT NOT NULL,
 MedicineItemID  INT NOT NULL,
 ProcedureItemID INT NOT NULL);

CREATE TABLE MedicineItem
(MedicineItemID INT         PRIMARY KEY,
 TreatmentID    INT         NOT NULL,
 MedicineName   VARCHAR(30) NOT NULL,
 MedicineInfo   VARCHAR(50) NULL,
 MedicineCost   MONEY       NOT NULL DEFAULT 0 CHECK (MedicineCost >= 0));

CREATE TABLE ProcedureItem
(ProcedureItemID INT         PRIMARY KEY,
 TreatmentID     INT         NOT NULL,
 ProcedureName   VARCHAR(30) NOT NULL,
 ProcedureInfo   VARCHAR(50) NULL,
 ProcedureCost   MONEY       NOT NULL DEFAULT 0 CHECK (ProcedureCost >= 0));
 
CREATE TABLE PatientHealthHistory
(HealthHistoryID INT PRIMARY KEY IDENTITY(1,1),
 Height          INT NOT NULL CHECK (Height > 0),
 Weight          INT NOT NULL CHECK (Weight > 0),
 HeartRate       INT NULL DEFAULT 0,
 BloodPressrue   INT NULL DEFAULT 0);

CREATE TABLE TreatmentDetails
(TreatmentID     INT PRIMARY KEY,
 HealthHistoryID INT NOT NULL);

CREATE TABLE DiagnosisDetails
(DiagnosisID      INT PRIMARY KEY,
 HealthHistoryID  INT NOT NULL,
 Symptoms         VARCHAR(50) NOT NULL,
 DiagnosisDetails VARCHAR(50) NOT NULL);

CREATE TABLE ReferralDoctorInfo
(ReferralDoctorID     INT PRIMARY KEY,
 HealthHistoryID      INT NOT NULL,
 PhysicianName        VARCHAR(50) NOT NULL,
 DoctorClinicName     VARCHAR(50) NOT NULL,
 DoctorSpecialization VARCHAR(50) NOT NULL);

CREATE TABLE HospitalizationInfo
(HospitalizationID   INT PRIMARY KEY,
 HealthHistoryID     INT NOT NULL,
 HospitalizationDate DATE NOT NULL,
 CheckInTime         TIME NOT NULL,
 DischargeDate       DATE NOT NULL,
 CheckOutTime        TIME NOT NULL);

CREATE TABLE PatientPrimaryDoctor
(EmployeeID INT NOT NULL,
 PatientID  INT NOT NULL);

/*comments - here i have used DDL statement to create tables in healthcarecenter database. I have also created columns for each tables
			 with their datatypes and column contraints*/