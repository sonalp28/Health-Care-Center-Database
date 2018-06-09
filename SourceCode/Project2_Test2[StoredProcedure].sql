/*Project 2 Sonal Patil HealthCare Center Database*/
/*Statement - When patient goes to billing counter, he/she has to pay bill. The person behind the billing counter will need at least 3 parameters from patient 
			  side to get all his billing history. Patient will get asked for his/her name & if he is paying bill or claiming insurance. To get this information
			  correctly & quickly I have created stored procedure which takes 3 parameters first, last name & who is paying bill (Self or Insurance).*/

USE HealthCareCenter;
GO 

CREATE PROC spGetBillInfo 
@FirstName VARCHAR(20),
@LastName  VARCHAR(20),
@Payor     VARCHAR(20)
AS
IF @Payor = 'Self' 
BEGIN
	SELECT B.BillID, PInfo.FirstName, PInfo.LastName, 
		   SUM(B.TotalAmount - B.AmountPaid) AS 'Amount Due'
	FROM PersonInfo PInfo JOIN Patient P ON P.PersonID = PInfo.PersonID JOIN
		 PatientBills B ON P.PatientID = B.PatientID
	WHERE PInfo.FirstName = @FirstName AND PInfo.LastName = @LastName 
	GROUP BY B.BillID, PInfo.FirstName, PInfo.LastName
END
ELSE
BEGIN
	SELECT B.BillID, PInfo.FirstName, PInfo.LastName, 
		   SUM(B.TotalAmount - B.AmountPaid - PIns.CoverageAmount) AS 'Amount Due'
	FROM PersonInfo PInfo JOIN Patient P ON P.PersonID = PInfo.PersonID JOIN
		 PatientBills B ON P.PatientID = B.PatientID JOIN
		 PatientHealthInsurance PIns ON PIns.PatientID = P.PatientID
	WHERE PInfo.FirstName = @FirstName AND PInfo.LastName = @LastName 
	GROUP BY B.BillID, PInfo.FirstName, PInfo.LastName
END
/*Comments - Here I have created stored procedure which accepts 3 input parameters and returns the filtered result set */