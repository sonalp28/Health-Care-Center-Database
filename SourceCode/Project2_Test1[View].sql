/*Project 2 Sonal Patil HealthCare Center Database*/
/*View statement - In health care center, a doctor handles bunch of patients & if the patient has serious health issue then he/she visits same doctor multiple 
				   times. Every time that patient comes for next treatment doctor must know all his/her previous record as he can't remember each & every 
				   patient’s previous record details. Providing previous health history of patient by simply searching for Patient’s name is what end user 
				   [user that will be having access to database application] has to do. Foe this simplified task I have written view which works as follow.*/

USE HealthCareCenter;
GO 

CREATE VIEW PatientPreviousRecordSummary AS
SELECT P.PatientID, PInfo.FirstName + ' ' + PInfo.LastName AS PatientName, 
	   Em.FirstName + ' ' + Em.LastName AS 'Doctor Name',
	   Ph.Weight, Ph.Height, Ph.HeartRate, Ph.BloodPressrue, 
	   D.Symptoms, D.DiagnosisDetails, 
	   Pro.ProcedureName AS 'Procedure Treatment', 
	   Med.MedicineName AS 'Medical Treatment',
	   Ref.PhysicianName AS 'Referral Doctor Name',
	   Hosp.DischargeDate AS 'Last Visit Date'
FROM Patient P JOIN PersonInfo PInfo ON P.PersonID = PInfo.PersonID JOIN
	 PatientPrimaryDoctor PDoc ON PDoc.PatientID = P.PatientID JOIN
	 Employee E ON E.EmployeeID = PDoc.EmployeeID JOIN
	 PersonInfo Em ON Em.PersonID = E.PersonID JOIN
	 PatientHealthHistory Ph ON Ph.HealthHistoryID = P.PatientID JOIN
	 DiagnosisDetails D ON D.HealthHistoryID = Ph.HealthHistoryID JOIN
	 TreatmentDetails T ON T.HealthHistoryID = Ph.HealthHistoryID JOIN
	 MedicineItem Med ON Med.TreatmentID = T.TreatmentID JOIN
	 ProcedureItem Pro ON Pro.TreatmentID= T.TreatmentID JOIN
	 ReferralDoctorInfo Ref ON Ref.HealthHistoryID = Ph.HealthHistoryID JOIN
	 HospitalizationInfo Hosp ON Hosp.HealthHistoryID = Ph.HealthHistoryID 
		 
/*Comments - Here I have created view using multiple joins and extracting useful data from multiple tables so that a very simple query on this view will 
			 return all required info in one strok*/
