/*Project 2 Sonal Patil HealthCare Center Database*/
USE HealthCareCenter;

/*Inserting data into PatientRoom, RoomInfo & RoomMedicalDeviceInfo tables*/
INSERT INTO PatientRoom(RoomID, Status, ScheduleInfo) VALUES
(1, 'Vacant',   'No Schedule Info'),
(2, 'Engaged',  'Scheduled for 7 days'),
(3, 'Cleaning', 'Scheduled for 1 hour'),
(4, 'Vacant',   'No Schedule Info'),
(5, 'Engaged',  'Scheduled for 2 days');

SET IDENTITY_INSERT RoomInfo ON;
INSERT INTO RoomInfo(RoomID, RoomType, NumberOfBeds, RoomNumber, BuildingLocation) VALUES
(1, 'Single',  1, 24,  '6 S Broadway St'),
(2, 'Sharing', 4, 46,  '6 S Broadway St'),
(3, 'Single',  1, 2,   '6 S Broadway St'),
(4, 'Single',  1, 12,  '6 S Broadway St'),
(5, 'Sharing', 6, 124, '6 S Broadway St');
SET IDENTITY_INSERT RoomInfo OFF;

INSERT INTO RoomMedicalDeviceInfo(DeviceID, RoomID, DeviceName, DeviceInfo) VALUES
(1, 1, 'Saline Bag',         'To prvide energy component'),
(2, 2, 'Syringe',            'To inject some medicines'),
(3, 3, 'Wheelchair',         ''),
(4, 4, 'Ventilator',         'for ICU patient'),
(5, 5, 'Patient Monitoring', '');
/*Comments - Here I have used DML statement Insert Into which allows me to enter data into health care center database tables*/

SELECT * FROM PatientRoom;
SELECT * FROM RoomInfo;
SELECT * FROM RoomMedicalDeviceInfo;
/*comments - here i am showing the newly inserted datat into tables*/