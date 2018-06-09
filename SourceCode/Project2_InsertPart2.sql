/*Project 2 Sonal Patil HealthCare Center Database*/
USE HealthCareCenter;

/*Inserting data into Employee, EmployeeSalaryInfo, EmployeeOfficeInfo & EmploymentHistory tables*/
INSERT INTO Employee (EmployeeID, PersonID, CurrentJobTitle, WorkSchedule, ContractType, ContractTerm) VALUES 
(1, 1, 'Orthopedics Physician',   'Mon-Fri', 'Permanent', '2012-2019'),
(2, 2, 'Primary Care Physician',  'Mon-Thr', 'Permanent', '2018-2024'),
(3, 3, 'Physician Assistant',     'Wed-Fri', 'Permanent', '2000-2025'),
(4, 4, 'Neuroscience Physician',  'Sat-Sun', 'Temporary', '2018-2019'),
(5, 5, 'Office Manager ',         'Mon-Wed', 'Permanent', '2014-2018');

SET IDENTITY_INSERT EmployeeOfficeInfo ON;				--to add values in identity column as the relationship is 1:1
INSERT INTO EmployeeOfficeInfo(EmployeeID, OfficeNumber, BuildingLocation, DepartmentName, OfficePhone) VALUES 
(1, 22, '639 Main St',    'Orthopedics',  '355-234-2325'),
(2, 24, '18 Fountain St', 'Primary Care', '123-124-1241'),
(3, 42, '6 S 33rd St',    'Medicine',     '564-464-1232'),
(4, 57, '92 Main St',     'Neurology',    '905-324-8438'),
(5, 89, '4 Iwaena St',    'HR',           '757-873-2388');
SET IDENTITY_INSERT EmployeeOfficeInfo OFF;

SET IDENTITY_INSERT EmployeeSalaryInfo ON;
INSERT INTO EmployeeSalaryInfo(EmployeeID, SalaryAmount, BenefitsInfo, BenefitsAmount) VALUES 
(1, 65000, 'None', 0),
(2, 40000, 'Bonus', 1200),
(3, 24000, 'None', 0),
(4, 87500, 'None', 0),
(5, 12350, 'Bonus', 20000);
SET IDENTITY_INSERT EmployeeSalaryInfo OFF;

INSERT INTO EmploymentHistory (EmploymentHistoryID, EmployeeID, PastJobTitle, Reviews) VALUES 
(1, 1, 'Orthopedic Surgon', 'Expert in Orthopedics'),
(2, 2, 'Physician', 'Good talking doctor'),
(3, 2, 'Physician Assistant', ''),
(4, 3, 'Neuro Physician', ''),
(5, 4, 'HR Manager', '');
/*Comments - Here I have used DML statement Insert Into which allows me to enter data into health care center database tables*/

SELECT * FROM Employee;
SELECT * FROM EmployeeOfficeInfo;
SELECT * FROM EmployeeSalaryInfo;
SELECT * FROM EmploymentHistory;
/*comments - here i am showing the newly inserted datat into tables*/