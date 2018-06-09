/*Project 2 Sonal Patil HealthCare Center Database*/
/*Statement - Once in a while, there comes a case which is really critical and a doctor working on that case needs some advice from his other colleagues working
			  in same department. At this time, doctor asks his assistant to send meeting invitation to all doctors. The assistant need to know the doctors of 
			  that department to send them invitation. To make assistant’s work simplified I have written a function which takes department name as parameter &
			  joins department employee and person information tables to give results of all doctor names with their email ids to send the invitation.*/

USE HealthCareCenter
GO

CREATE FUNCTION fnDeptWiseDoctors (@DepartmentName VARCHAR(20)) RETURNS TABLE

RETURN
	(SELECT PInfo.FirstName, PInfo.LastName, PInfo.Email, PInfo.Phone, E.WorkSchedule
	 FROM   Employee E JOIN PersonInfo PInfo ON E.PersonID = PInfo.PersonID JOIN
			EmployeeOfficeInfo EOffice ON EOffice.EmployeeID = E.EmployeeID
	 WHERE EOffice.DepartmentName = @DepartmentName);



/*Comments - Here I have created a function which takes department name as parameter & joins department employee and person information tables to give results 
			 of all doctor names with their email ids to send the invitation. */