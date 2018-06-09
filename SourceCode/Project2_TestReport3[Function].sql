/*Project 2 Sonal Patil HealthCare Center Database*/
/*Statement - Once in a while, there comes a case which is really critical and a doctor working on that case needs some advice from his other colleagues working
			  in same department. At this time, doctor asks his assistant to send meeting invitation to all doctors. The assistant need to know the doctors of 
			  that department to send them invitation. To make assistant’s work simplified I have written a function which takes department name as parameter &
			  joins department employee and person information tables to give results of all doctor names with their email ids to send the invitation.*/

/*Testing Created function*/

USE HealthCareCenter

SELECT * FROM fnDeptWiseDoctors('Primary Care');

/*Comments - Here I have executed the function created earlier. I have passed required parameters to this stored procedure and got the simplified result
			 quickly to access*/