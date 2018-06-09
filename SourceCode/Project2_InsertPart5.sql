/*Project 2 Sonal Patil HealthCare Center Database*/
USE HealthCareCenter;

/*Inserting data into PatientHealthHistory, TreatmentDetails, DiagnosisDetails, HospitalizationInfo & ReferralDoctorInfo tables*/
SET IDENTITY_INSERT PatientHealthHistory ON;
INSERT INTO PatientHealthHistory(HealthHistoryID, Height, Weight, HeartRate, BloodPressrue) VALUES
(1, 5.5 , 64, 70, 120),
(2, 5.0 , 64, 65, 100),
(3, 4.5 , 58, 75, 90),
(4, 6.0 , 70, 60, 110),
(5, 5.8 , 68, 72, 85);
SET IDENTITY_INSERT PatientHealthHistory OFF;

INSERT INTO TreatmentDetails(TreatmentID, HealthHistoryID) VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 4);

INSERT INTO DiagnosisDetails(DiagnosisID, HealthHistoryID, Symptoms, DiagnosisDetails) VALUES
(1, 1, 'Fever' ,             'Medicine prescribed'),
(2, 1, 'Headache' ,          'Medicine prescribed'),
(3, 2, 'Ankle twist' ,       'Medicine & Procedure prescribed'),
(4, 3, 'Blood donar' ,       'Procedure prescribed'),
(5, 4, 'Severe brain pain' , 'Procedure prescribed');

INSERT INTO ReferralDoctorInfo(ReferralDoctorID, HealthHistoryID, PhysicianName, DoctorClinicName, DoctorSpecialization) VALUES
(1, 1, 'Dr. Staci Schmaltz', 'Cordelia Clinic',    'Physician'),
(2, 1, 'Dr. Golda Kaniecki', 'Tagala Clinic',      'Orthopedics Physician'),
(3, 2, 'Dr. Keneth Borgman', 'Cordelia Clinic',    'Neuro Surgron'),
(4, 3, 'Dr. Hoa Sarao',      'Eden Graden Clinic', 'Primary Care Physician'),
(5, 4, 'Dr. Arthur Farrow',  'Eden Graden Clinic', 'Physician');

INSERT INTO HospitalizationInfo(HospitalizationID, HealthHistoryID, HospitalizationDate, CheckInTime, DischargeDate, CheckOutTime) VALUES
(1, 1,  CONVERT(DATE,'2018-04-02'), CONVERT(TIME,'01:00PM'),  CONVERT(DATE,'2018-04-02'), CONVERT(TIME,'08:00PM')),
(2, 1,  CONVERT(DATE,'2018-04-02'), CONVERT(TIME,'06:00AM'),  CONVERT(DATE,'2018-04-01'), CONVERT(TIME,'04:00PM')),
(3, 2,  CONVERT(DATE,'2018-05-02'), CONVERT(TIME,'09:00PM'),  CONVERT(DATE,'2018-05-05'), CONVERT(TIME,'07:00AM')),
(4, 3,  CONVERT(DATE,'2018-04-04'), CONVERT(TIME,'12:00PM'),  CONVERT(DATE,'2018-04-08'), CONVERT(TIME,'10:00PM')),
(5, 4,  CONVERT(DATE,'2018-04-15'), CONVERT(TIME,'11:00PM'),  CONVERT(DATE,'2018-05-05'), CONVERT(TIME,'01:00PM'));
/*Comments - Here I have used DML statement Insert Into which allows me to enter data into health care center database tables*/

SELECT * FROM PatientHealthHistory;
SELECT * FROM TreatmentDetails;
SELECT * FROM DiagnosisDetails;
SELECT * FROM ReferralDoctorInfo;
SELECT * FROM HospitalizationInfo; /*comments - here i am showing the newly inserted datat into tables*/