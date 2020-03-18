USE master;
GO
IF DB_ID ('AirlinesReservationDB') IS NOT NULL
DROP DATABASE AirlinesReservationDB;
GO
CREATE DATABASE AirlinesReservationDB

GO
USE AirlinesReservationDB;

/***********************PassengerInfo Table***********************/
CREATE TABLE PassengerInfo(
						PassengerID  INT IDENTITY PRIMARY KEY,
						FirstName 	VARCHAR(20),
						LastName  varchar(20),
						DateOfBirth varchar(50),
						Age INT,
						PhoneNumber varchar(80),
						Email varchar(100),
						passportNo varchar(50),
						ImageUrl varchar(250) 
						);

GO
/***********************CabinType Table***********************/
CREATE TABLE CabinType(
						CabinID 	INT IDENTITY PRIMARY KEY,
						Class_Name 	VARCHAR(50),
						Cost        INT
						);

GO
/***********************FlightInfo Table***********************/
CREATE TABLE FlightInfo (
						FlightID      INT IDENTITY PRIMARY KEY,
						FlightNunber  varchar(20),
						TakeOff       varchar(60),
						Landing       varchar(60)
						);

GO
/***********************BookingFlight Table***********************/
CREATE TABLE BookingFlight(
						BookID 		  INT IDENTITY PRIMARY KEY,
						FromPlace     varchar(40),
						Destination   varchar(40),
						FlightDate    varchar(60),
						PassengerID        INT REFERENCES PassengerInfo(PassengerID),
						CabinID            INT REFERENCES CabinType(CabinID),
						FlightID           INT REFERENCES FlightInfo(FlightID)
						);



insert into PassengerInfo values ('Md. Imran', 'Hosen', '21-01-1995', 24, '01617553721', 'imranhosen@gmail.com', '2154896544', '~/Images/imran.jpg'),
								('Mohammad', 'Alauddin', '15-05-1994', 25, '01616598472', 'mohammadalauddin@gmail.com', '2154896984', '~/Images/alauddin.jpg'),
								('Sharmin', 'Rumpa', '09-10-1991', 27, '01896548065', 'sharmin@gmail.com', '4561238974', '~/Images/sharmin.jpg'),
								('AlaUddin', 'Zafar', '09-08-1995', 24, '01617553722', 'alazafar@gmail.com', '9978445562', '~/Images/zafar.jpg'),
								('Zulhas', 'Mia', '06-04-1994', 25, '01956147863', 'zulhas@gmail.com', '3326001578', '~/Images/zulhas.jpg'),
								('Robiul', 'Hossain', '25-11-1993', 26, '01825456590', 'robiul@gmail.com', '54566920112', '~/Images/robiul.jpg'),
								('Md. Akram', 'Hossain', '14-07-1994', 25, '01863562514', 'akram@gmail.com', '5487954302', '~/Images/akram.jpg'),
								('Benojir', 'Khanom', '26-04-1991', 27, '01689457815', 'benojir@gmail.com', '9874562387', '~/Images/benojir.jpg'),
								('Md.Kawser', 'Ahmed', '12-03-1991', 27, '01932659814', 'kawser@gmail.com', '95654255', '~/Images/kawser.jpg'),
								('Rokeya', 'Akter', '06-10-1993', 27, '0177955372', 'rokeya@gmail.com', '3325100489', '~/Images/rokeya.jpg');
	
	

insert into CabinType values ('Business Class', 52500), ('Economy Class', 48500), ('Luxury Class', 75000);
insert into FlightInfo values ('BG-89', '09:10am', '03:25pm'), ('BG-202', '06:15pm', '12:00PM'), ('BG-84', '08:25am', '02:40pm'), 
								('BG-85', '03:50pm', '06:00pm'), ('BG-39', '01:15am', '05:10am'), ('BG-40', '07:00am', '03:40am');

insert into BookingFlight values ('Dhaka', 'London', '06-01-2020', 6, 2, 2), ('Dhaka', 'Riyadh', '05-01-2020', 9, 2, 1),
								  ('Dhaka', 'Bangkok', '03-01-2020', 1, 3, 3),('Dhaka', 'Singapore', '06-01-2020', 2, 1, 6),
								  ('Dhaka', 'Dubai', '04-01-2020', 4, 2, 5),('Dhaka', 'Muscat', '05-01-2020', 8, 2, 6),
								  ('Dhaka', 'Bangkok', '04-01-2020', 3, 2, 1),('Dhaka', 'London', '05-01-2020', 5, 1, 2),
								  ('Dhaka', 'Kuwait', '06-01-2020', 10, 2, 5),('Dhaka', 'Singapore', '06-01-2020', 7, 2, 3);


create table Users (userId	INT IDENTITY PRIMARY KEY,
				    UserName 	VARCHAR(20),
					Password   Varchar(12));


select * from PassengerInfo;
select * from CabinType;
select * from FlightInfo;
select * from BookingFlight;	


select PassengerInfo.FirstName, BookingFlight.FromPlace, BookingFlight.Destination, CabinType.Class_Name, BookingFlight.FlightDate, FlightInfo.FlightNunber from 
BookingFlight join PassengerInfo on BookingFlight.PassengerID = PassengerInfo.PassengerID 
			  join FlightInfo on BookingFlight.FlightID = FlightInfo.FlightID
			  join CabinType on BookingFlight.CabinID = CabinType.CabinID
						