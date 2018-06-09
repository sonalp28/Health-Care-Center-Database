/*Project 2 Sonal Patil HealthCare Center Database*/
USE HealthCareCenter;

/*Inserting data into PatientBills, Items, MedicineItem & ProcedureItem tables*/
INSERT INTO PatientBills(BillID, PatientID, Visits, Payor, PaymentMethod, TotalAmount, AmountPaid) VALUES
(1, 1, 2, 'Self', 'Cash', 1456.00, 1000.00),
(2, 1, 2, 'Self', 'Cash', 1456.00, 1000.00),
(3, 1, 2, 'Self', 'Cash', 1456.00, 1000.00),
(4, 1, 2, 'Self', 'Cash', 1456.00, 1000.00),
(5, 1, 2, 'Self', 'Cash', 1456.00, 1000.00);

INSERT INTO MedicineItem(MedicineItemID, TreatmentID, MedicineName, MedicineInfo, MedicineCost) VALUES
(1, 1, 'RELPAX',      'Migraine 200MG',      5.00),
(2, 2, 'PIROXICAM',   'ADCO-PIROXICAM 20MG', 28.90),
(3, 3, 'IBUPROFEN',   'PAINIL 200MG',        20.00),
(4, 4, 'ALLOPURINOL', 'ZYLOPRIM 100MG',      71.31),
(5, 4, 'PARACETAMOL', 'PANADO 120MG/5ML',    96.93),
(6, 5, 'DIAZEPAM',    'BETAPAM 5MG',         120.00);

INSERT INTO ProcedureItem(ProcedureItemID, TreatmentID, ProcedureName, ProcedureInfo, ProcedureCost) VALUES
(1, 1, 'Blood transfusion', 'Blood donation',            0.00),
(2, 2, 'Circumcision',      '',                          12000.00),
(3, 3, 'Fetal monitoring',  'Montitoring after surgery', 1000.00),
(4, 4, 'Arthroplasty knee', '',                          1600.00),
(5, 4, 'Spinal fusion',     '',                          5000.00),
(6, 5, 'Hip replacement',   '',                          20000.00);

INSERT INTO Items(BillID, MedicineItemID, ProcedureItemID) VALUES
(1, 1, 1),
(1, 2, 2),
(2, 3, 4),
(3, 4, 3),
(4, 1, 1),
(4, 4, 4),
(5, 5, 5);
/*Comments - Here I have used DML statement Insert Into which allows me to enter data into health care center database tables*/

SELECT * FROM PatientBills;
SELECT * FROM MedicineItem;
SELECT * FROM ProcedureItem;
SELECT * FROM Items; /*comments - here i am showing the newly inserted datat into tables*/