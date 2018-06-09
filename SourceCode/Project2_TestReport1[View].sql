/*Project 2 Sonal Patil HealthCare Center Database*/
/*View statement - In a health care center, a doctor handles bunch of patients and if the patient has a serious health issue then he/she 
				   visits the same doctor multiple times. Every time this patient comes for next treatment doctor must know all his/her 
				   previous record as that doctor can’t remember each and every patient’s previous record details. Providing the previous
				   health history of a patient by simply searching for Patient’s name is what a end user [user that will be having access
				   to this database application] has to do. Foe this simplified task I have written a view which works as follow.*/

/*Testing the created view*/

USE HealthCareCenter;

SELECT * FROM PatientPreviousRecordSummary 
WHERE PatientName LIKE 'Jaclyn%';

/*Comments - Here I have tested my earlier created view with giving the condition of patient name*/