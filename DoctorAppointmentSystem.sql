Drop database DoctorAppointment
Create database DoctorAppointment

Use DoctorAppointment

 Create table Specialist
 (
  Specialist_ID int primary key not null,
  Specialist varchar(50)
 );
 GO

 Create table Doctor
 (
  DoctorID int primary key not null,
  DoctorName varchar(50),
  SpecialistID int references Specialist(Specialist_ID),
  FilePath nvarchar (500)
 );
 GO

 Create table Service_Type
 (
  ServiceID int primary key not null,
  Cost money,
  ServiceType varchar(50)
 );
 GO

 Create table Schedule
 (
  ScheduleID int primary key not null,
  SerialNo int,
  ScheduleDate varchar(50),
  DoctorID int references Doctor(DoctorID)
 );
 GO

 select* from Specialist
 select* from Doctor
 select* from Service_Type
 select* from Schedule