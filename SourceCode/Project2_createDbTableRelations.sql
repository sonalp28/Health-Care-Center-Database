/*Project 2 Sonal Patil HealthCare Center Database*/

USE HealthCareCenter;

ALTER TABLE PersonAddressInfo																				-- foregin key table
ADD CONSTRAINT FK_PersonAddressID FOREIGN KEY(PersonID) REFERENCES PersonInfo(PersonID)

ALTER TABLE Employee																						-- foregin key table
ADD CONSTRAINT FK_EmployeePersonID FOREIGN KEY(PersonID) REFERENCES PersonInfo(PersonID)

ALTER TABLE Patient																							-- foregin key table
ADD CONSTRAINT FK_PatientPersonID FOREIGN KEY(PersonID) REFERENCES PersonInfo(PersonID)

ALTER TABLE EmployeeOfficeInfo																				-- foregin key table
ADD CONSTRAINT FK_EmployeeOfficeID FOREIGN KEY(EmployeeID) REFERENCES Employee(EmployeeID)					-- [one:one Relationship]

ALTER TABLE EmployeeSalaryInfo																				-- foregin key table
ADD CONSTRAINT FK_EmployeeSalaryID FOREIGN KEY(EmployeeID) REFERENCES Employee(EmployeeID)					-- [one:one Relationship]

ALTER TABLE EmploymentHistory																				-- foregin key table
ADD CONSTRAINT FK_EmployeeID FOREIGN KEY(EmployeeID) REFERENCES Employee(EmployeeID)

ALTER TABLE PatientPrimaryDoctor																			-- foregin key table
ADD CONSTRAINT FK_DoctorID FOREIGN KEY(EmployeeID) REFERENCES Employee(EmployeeID)

ALTER TABLE PatientPrimaryDoctor																			-- foregin key table
ADD CONSTRAINT FK_PatientID FOREIGN KEY(PatientID) REFERENCES Patient(PatientID)

ALTER TABLE Patient																							-- foregin key table
ADD CONSTRAINT FK_PatientRoomID FOREIGN KEY(RoomID) REFERENCES PatientRoom(RoomID)

ALTER TABLE RoomInfo																						-- foregin key table
ADD CONSTRAINT FK_RoomID FOREIGN KEY(RoomID) REFERENCES PatientRoom(RoomID)									-- [one:one Relationship]

ALTER TABLE RoomMedicalDeviceInfo																			-- foregin key table
ADD CONSTRAINT FK_RoomDeviceID FOREIGN KEY(RoomID) REFERENCES PatientRoom(RoomID)

ALTER TABLE PatientHealthInsurance																			-- foregin key table
ADD CONSTRAINT FK_PatientInsuranceID FOREIGN KEY(PatientID) REFERENCES Patient(PatientID)

ALTER TABLE Visitors																						-- foregin key table
ADD CONSTRAINT FK_PatientVisitorID FOREIGN KEY(PatientID) REFERENCES Patient(PatientID)

ALTER TABLE VisitorPhoto																					-- foregin key table
ADD CONSTRAINT FK_VisitorID FOREIGN KEY(VisitorID) REFERENCES Visitors(VisitorID)							-- [one:one Relationship]

ALTER TABLE PatientBills																					-- foregin key table
ADD CONSTRAINT FK_PatientBillID FOREIGN KEY(PatientID) REFERENCES Patient(PatientID)

ALTER TABLE Items																							-- foregin key table
ADD CONSTRAINT FK_BillID FOREIGN KEY(BillID) REFERENCES PatientBills(BillID)

ALTER TABLE Items																							-- foregin key table
ADD CONSTRAINT FK_ItemMedicineID FOREIGN KEY(MedicineItemID) REFERENCES MedicineItem(MedicineItemID)

ALTER TABLE Items																							-- foregin key table
ADD CONSTRAINT FK_ItemProcedureID FOREIGN KEY(ProcedureItemID) REFERENCES ProcedureItem(ProcedureItemID)

ALTER TABLE MedicineItem																					-- foregin key table
ADD CONSTRAINT FK_MedicineTreatmentID FOREIGN KEY(TreatmentID) REFERENCES TreatmentDetails(TreatmentID)

ALTER TABLE ProcedureItem																					-- foregin key table
ADD CONSTRAINT FK_ProductTreatmentID FOREIGN KEY(TreatmentID) REFERENCES TreatmentDetails(TreatmentID)

ALTER TABLE PatientHealthHistory																			-- foregin key table
ADD CONSTRAINT FK_HealthHistoryID FOREIGN KEY(HealthHistoryID) REFERENCES Patient(PatientID)				-- [one:one Relationship]

ALTER TABLE TreatmentDetails																				-- foregin key table
ADD CONSTRAINT FK_TreatmentHealthHistoryID FOREIGN KEY(HealthHistoryID) REFERENCES PatientHealthHistory(HealthHistoryID)

ALTER TABLE DiagnosisDetails																				-- foregin key table
ADD CONSTRAINT FK_DiagnosisHealthHistoryID FOREIGN KEY(HealthHistoryID) REFERENCES PatientHealthHistory(HealthHistoryID)

ALTER TABLE ReferralDoctorInfo																				-- foregin key table
ADD CONSTRAINT FK_RefDocHealthHistoryID FOREIGN KEY(HealthHistoryID) REFERENCES PatientHealthHistory(HealthHistoryID)

ALTER TABLE HospitalizationInfo																				-- foregin key table
ADD CONSTRAINT FK_HospitalizationHealthHistoryID FOREIGN KEY(HealthHistoryID) REFERENCES PatientHealthHistory(HealthHistoryID)


/*Comments - Here I have used DDL statement to modify the tables I have created in the health care center database. The modification 
			 is adding relationshsips between tables.*/