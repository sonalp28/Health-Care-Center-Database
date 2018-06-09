/*Project 2 Sonal Patil HealthCare Center Database*/
/*Statement - In health care center, Doctors need to take care of all patients but along with that they have responsibility of not spreading any severe disease.
			  If a patient is diagnosed with some severe disease which is very harmful & it can also be passed to other who are or were in contact with that 
			  patient, then Doctors need to inform those people & immediately start their curing procedure. For this we need information about who visited that 
			  patient who is being diagnosed with the critical disease. To Solve this issue, I have written script which will fetch all necessary data quickly.*/

USE HealthCareCenter
GO

DECLARE @InfectedPatientID INT;

SELECT @InfectedPatientID = P.PatientID
FROM Patient P JOIN PersonInfo PInfo ON P.PersonID = PInfo.PersonID JOIN 
	 PatientHealthHistory Ph ON P.PatientID = Ph.HealthHistoryID JOIN
	 DiagnosisDetails D ON Ph.HealthHistoryID = D.HealthHistoryID
WHERE D.Symptoms = 'Fever';

IF (@InfectedPatientID NOT IN (SELECT PatientID FROM Visitors))
PRINT 'No one was Infected!'
ELSE
SELECT VisitorName, Phone, 'Person is Infected Call Immediately!' AS 'Action'
FROM Visitors
WHERE PatientID = @InfectedPatientID;

/*Comments - Here I have created a script which will finding out the all visitors visited the person with severe disease so that doctors can start 
	         treating them as well so they may not get severe problem. */