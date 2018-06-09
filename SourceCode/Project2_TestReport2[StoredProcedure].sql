/*Project 2 Sonal Patil HealthCare Center Database*/
/*Statement - When patient goes to billing counter, he/she has to pay bill. The person behind the billing counter will need at least 3 parameters from patient 
			  side to get all his billing history. Patient will get asked for his/her name & if he is paying bill or claiming insurance. To get this information
			  correctly & quickly I have created stored procedure which takes 3 parameters first, last name & who is paying bill (Self or Insurance).*/

/*Testing the created stored procedure*/
USE HealthCareCenter;

EXEC spGetBillInfo 'Jaclyn','Bachman','Self';

EXEC spGetBillInfo 'Jaclyn','Bachman','Insurance';

/*Comments - Here I have executed the stored procedure created earlier. i have passed required parameters to this stored procedure and got the simplified result
			 quickly to access
			 calculations - Self - Amount due = 5875.12
							Insurance - Amount Due = 5875.12 - 1000.00 [Insurance coverage amout] = 4875.12*/