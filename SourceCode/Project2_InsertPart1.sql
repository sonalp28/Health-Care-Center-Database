/*Project 2 Sonal Patil HealthCare Center Database*/
USE HealthCareCenter;

/*Inserting data into PersonInfo & PersonAddressInfo tables*/
INSERT INTO PersonInfo(PersonID, FirstName, LastName, Email, SSN, Phone)
VALUES 
(1,  'Allan',     'Sherwood',  'allan.sherwood@yahoo.com',    '984502839', '201-653-4472'),
(2,  'Barry',     'Zimmer',    'barryz@gmail.com',            '855105143', '402-896-2576'),
(3,  'Christine', 'Brown',     'christineb@solarone.com',     '760448586', '503-654-1291'),
(4,  'David',     'Goldstein', 'david.goldstein@hotmail.com', '289944818', '415-292-6651'),
(5,  'Erin',      'Valentino', 'erinv@gmail.com',             '923819911', '559-431-2398'),
(6,  'Markus',    'Lukasik',   'markus@yahoo.com',            '902782166', '703-874-4248'),
(7,  'Jaclyn',    'Bachman',   'jaclyn@aol.com',              '360213326', '817-947-9480'),
(8,  'Cyril',     'Daufeldt',  'cyril_daufeldt@daufeldt.com', '108628643', '847-613-5866'),
(9,  'Erick',     'Nievas',    'erick_nievas@aol.com',        '704256537', '718-728-5051'),
(10, 'Jennie',    'Drymon',    'jennie@cox.net',              '465192216', '404-607-8435');

INSERT INTO PersonAddressInfo(AddressID, PersonID, AddressType, AddressLine1, AddressLine2, City, State, ZipCode)
VALUES 
(1,  1,  'Home',   '100 East Ridgewood Ave.',  '',        'Paramus',        'NJ', '07652'),
(2,  1,  'Office', '21 Rosewood Rd.',          '',        'Woodcliff Lake', 'NJ', '07677'),
(3,  2,  'Home',   '539 Coldwater Canyon Ave', '',        'Bloomfield',     'NJ', '7003'),
(4,  3,  'Home',   '8 W Cerritos Ave #54',     '',        'Bridgeport',     'NJ', '8014'),
(5,  4,  'Home',   '50 E Wacker Dr',           '',        'Bridgewater',    'NJ', '8807'),
(6,  5,  'Home',   '3732 Sherman Ave',         '',        'Bridgewater',    'NJ', '8807'),
(7,  6,  'Home',   '6 S Broadway St',          '',        'Cedar Grove',    'NJ', '7009'),
(8,  7,  'Home',   '501 N 19th Ave',           '',        'Cherry Hill',    'NJ', '8002'),
(9,  8,  'Home',   '43496 Commercial Dr',      'APT #29', 'Cherry Hill',    'NJ', '8003'),
(10, 9,  'Home',   '82 Us Highway 46',         '',        'Clifton',        'NJ', '7011'),
(11, 10, 'Home',   '78 Maryland Dr #146',      '',        'Denville',       'NJ', '7834');

/*Comments - Here I have used DML statement Insert Into which allows me to enter data into health care center database tables*/

SELECT * FROM PersonInfo;
SELECT * FROM PersonAddressInfo;

/*comments - here i am showing the newly inserted datat into tables*/