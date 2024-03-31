create database tcdb

use tcdb

create table travelclassics(
	userId int  NOT NULL,
	userName varchar(50) NOT NULL ,
	password varchar(50) NOT NULL ,
	userType varchar(30) NOT NULL
)



create table traveler(
	travelerID int  NOT NULL,
	travelerName varchar(50) NOT NULL,
	travalerEmail varchar(50) NOT NULL,
	travalerHouseNo varchar(30) NOT NULL,
	travalerCity varchar(30) NOT NULL,
	travalerCountry varchar(30) NOT NULL,
	userID int  NOT NULL
)
select * from travelclassics
select * from traveler 

create table hotel(
	hotelID int  NOT NULL,
	hotelName varchar (50) NOT NULL,
	hotelContactNum varchar(30) NOT NULL,
	userId int  NOT NULL
)

create table report(
	reportId varchar(20)  NOT NULL,
	reportTitle varchar(100),
	description varchar (1000),
	travelerId int  NOT NULL
)

select * from hotel
select * from report

create table reservation(
	reservationId varchar(20)  NOT NULL ,
	travelerID int  NOT NULL,
	roomID varchar (20) NOT NULL
)

create table reservation_make(
	reservationId varchar(20)  NOT NULL,
	travelerID int  NOT NULL,
	noOfGuest int  NOT NULL,
)

create table transactionTC(
	transactionID int  NOT NULL,
	transactionTime time NOT NULL,
	transactionDate date NOT NULL,
	reservationId varchar(20)  NOT NULL

) 

select * from reservation
select * from reservation_make
select * from transactionTC

create table roomcatagory(
	roomCatagoryId varchar(20)  NOT NULL ,
	roomCatagoryName varchar(50),
	numberOfRoom int  NOT NULL ,
)

create table room(
	roomId varchar(20)  NOT NULL,
	avalibility varchar(10) NOT NULL,
	hotelId int NOT NULL,
	roomcatagoryId varchar(20)  NOT NULL,

)
create table facilities(
	facilityId int  NOT NULL,
	facilityName varchar(50) NOT NULL,
)

select * from roomcatagory
select * from room
select * from facilities


create table hotel_facility(
	hotelId int  NOT NULL,
	facilityId int  NOT NULL,
)

create table hotel_address(
	addressId int  NOT NULL ,
	street varchar(100) NOT NULL ,
	city varchar(50) NOT NULL ,
	country varchar(50) NOT NULL ,
	hotelId int  NOT NULL,
	
)

select * from hotel_facility
select * from hotel_address

sp_help traveler

alter table traveler
drop constraint PK__traveler__9710D441C569476C


alter table traveler 
add constraint PK_traveler primary key (travelerid)

alter table  travelclassics
add constraint PK_travelclassics primary key (userid)


alter table traveler
add constraint FK_traveleruid foreign key (userid) references travelclassics(userid)

alter table hotel 
add constraint PK_hotel primary key (hotelid)

alter table hotel 
add constraint FK_hoteluid foreign key(userid) references travelclassics(userid)

alter table report 
add constraint PK_report primary key(reportid)

alter table report
add constraint FK_travelerReport foreign key (travelerid) references traveler(travelerid)


alter table room
add constraint PK_room primary key (roomid)

alter table room
add constraint FK_roomHotel foreign key(hotelid) references hotel(hotelid)

alter table roomcatagory
add constraint PK_roomcatagory primary key (roomcatagoryid)

alter table room
add constraint FK_roomRoomCatagory foreign key (roomcatagoryid) references roomcatagory(roomcatagoryid)


alter table reservation 
add constraint PK_reservation primary key (reservationid)

alter table reservation
add constraint FK_reservationTraveler foreign key (travelerid) references traveler(travelerid)

alter table reservation 
add constraint FK_resarvation_Room foreign key (roomId) references room(roomId)


alter table reservation_make
add constraint FK_reservationMakeReservation foreign key(reservationid) references reservation(reservationid)

alter table reservation_make
add constraint FK_reservationMakeTraveler foreign key(travelerid) references traveler(travelerid)

alter table reservation_make
add constraint PK_reservationMake primary key (reservationid,travelerid)


alter table transactionTC 
add constraint PK_transactionTC primary key(transactionid)

alter table transactionTC
add constraint FK_transactionTcReservation foreign key (reservationid) references reservation(reservationid)

alter table facilities
add constraint PK_facilities primary key (facilityid)

alter table hotel_facility
add constraint FK_hotelFacilitiesID foreign key (facilityid) references facilities(facilityid)

alter table hotel_facility
add constraint FK_hotelIdFacilities foreign key (hotelid) references hotel(hotelid)

alter table hotel_facility
add constraint PK_hotelFacility primary key (hotelid,facilityid)

alter table hotel_address
add constraint FK_hotelIdAddress foreign key (hotelid) references hotel(hotelid)

 


-- add data to login

insert into travelclassics values('1','dineth','1234','traveler')
insert into travelclassics values('2','sahan','4942d','traveler')
insert into travelclassics values('3','pawan','lasks','traveler')
insert into travelclassics values('4','rahal','82jd','traveler')
insert into travelclassics values('5','kamal','kamal2003','traveler')
insert into travelclassics values('6','bimal','df1234','traveler')
insert into travelclassics values('7','mila','f1234df','traveler')
insert into travelclassics values('8','pasan','dfd1234a','traveler')
insert into travelclassics values('9','bella','12df3fd4','traveler')
insert into travelclassics values('10','gayanga','df1f3ffd','traveler')

insert into travelclassics values('21','gayanga','df1f3ffd','traveler')
insert into travelclassics values('22','gayanga','df1f3ffd','traveler')
insert into travelclassics values('2','gayanga','df1f3ffd','traveler')
insert into travelclassics values('10','gayanga','df1f3ffd','traveler')
insert into travelclassics values('10','gayanga','df1f3ffd','traveler')

select * from facilities

insert into travelclassics values('11','sigiri','12df3fd4','hotel')
insert into travelclassics values('12','prime','12df3fd4','hotel')
insert into travelclassics values('13','saman','12df3fd4','hotel')
insert into travelclassics values('14','gihan','12df3fd4','hotel')
insert into travelclassics values('15','pavindu','12df3fd4','hotel')
insert into travelclassics values('16','nilmini','12df3fd4','hotel')
insert into travelclassics values('17','ramya','12df3fd4','hotel')
insert into travelclassics values('18','navro','12df3fd4','hotel')
insert into travelclassics values('19','eco','12df3fd4','hotel')
insert into travelclassics values('20','resadu','12df3fd4','hotel')
insert into travelclassics values('21','gihan','1234','traveler')

select * from travelclassics

insert into traveler values ('1001','dineth','dineth@mail.com','No15','kaburupitiya','Sri lanka','1')
insert into traveler values ('1002','samam','saman@mail.com','No102','manape','Sri lanka','2')
insert into traveler values ('1003','gayanga','gayanga@mail.com','No35','walasmulla','Sri lanka','10')
insert into traveler values ('1004','bella','bella@mail.com','No109','los angelies','USA','9')
insert into traveler values ('1005','bimal','bimal@mail.com','No15','colombo','Sri lanka','6')
insert into traveler values ('1006','pasan','pasan@mail.com','No66','wilpita','Sri lanka','8')
insert into traveler values ('1007','rahal','rahal@mail.com','No72','kaburupitiya','Sri lanka','4')
insert into traveler values ('1008','gayanga','gayanga@mail.com','No15','los angelies','USA','1')
insert into traveler values ('1009','mila','mila@mail.com','No69','los angelies','Sri lanka','1')
insert into traveler values ('1010','pawan','pawan@mail.com','No90','matara','Sri lanka','1')


update traveler set userid = 10 where travelerID = '1008'
update traveler set userid = 3 where travelerID = '1010'
update traveler set userid = 7 where travelerID = '1009'


insert into hotel values ('2001','sigiri hotel','+947722222222','11')
insert into hotel values ('2002','resadu hotel','+94775566778','20')
insert into hotel values ('2003','navro hotel','+94775465657','18')
insert into hotel values ('2004','pavindu hotel','+947722222222','15')
insert into hotel values ('2005','ramya hotel','+947722222222','17')
insert into hotel values ('2006','eco hotel','+947722222222','19')
insert into hotel values ('2007','village hotel','+947722222222','14')
insert into hotel values ('2008','samanmal hotel','+947722222222','13')
insert into hotel values ('2009','nilmini hotel','+947722222222','16')
insert into hotel values ('2010','prime hotel','+947722222222','12')

UPDATE hotel SET hotelcontactnum = '+94773211011' WHERE hotelid = '2001';
UPDATE hotel SET hotelcontactnum = '+94775562345' WHERE hotelid = '2002';
UPDATE hotel SET hotelcontactnum = '+94777098765' WHERE hotelid = '2003';
UPDATE hotel SET hotelcontactnum = '+94777888888' WHERE hotelid = '2004';
UPDATE hotel SET hotelcontactnum = '+94776665555' WHERE hotelid = '2005';
UPDATE hotel SET hotelcontactnum = '+94779999000' WHERE hotelid = '2006';
UPDATE hotel SET hotelcontactnum = '+94778887777' WHERE hotelid = '2007';
UPDATE hotel SET hotelcontactnum = '+94772221111' WHERE hotelid = '2008';
UPDATE hotel SET hotelcontactnum = '+94773334444' WHERE hotelid = '2009';
UPDATE hotel SET hotelcontactnum = '+94778889999' WHERE hotelid = '2010';

select * from hotel



insert into facilities values ('3001','Swimming pool')
insert into facilities values ('3002','24 Hour security')
insert into facilities values ('3003','Gymnasium')
insert into facilities values ('3004','Poolside bar')
insert into facilities values ('3005','Semi open & outdoor restaurant')
insert into facilities values ('3006','Spa')
insert into facilities values ('3007','Water purification system')
insert into facilities values ('3008','Meeting facilities')
insert into facilities values ('3009','Free wireless internet access')
insert into facilities values ('3010','Sunset boat trip')
insert into facilities values ('3011','Childrens Play Area')
insert into facilities values ('3012','Gift Shop')
insert into facilities values ('3013','Event and Wedding Facilities')
insert into facilities values ('3014','Airport Shuttle Service')
insert into facilities values ('3015','Business Center')


insert into hotel_facility values ('2001','3003')
insert into hotel_facility values ('2001','3006')
insert into hotel_facility values ('2001','3007')
insert into hotel_facility values ('2002','3006')
insert into hotel_facility values ('2002','3010')
insert into hotel_facility values ('2002','3003')
insert into hotel_facility values ('2003','3002')
insert into hotel_facility values ('2003','3004')
insert into hotel_facility values ('2003','3008')
insert into hotel_facility values ('2004','3004')
insert into hotel_facility values ('2004','3001')
insert into hotel_facility values ('2004','3002')
insert into hotel_facility values ('2005','3012')
insert into hotel_facility values ('2005','3014')
insert into hotel_facility values ('2006','3008')
insert into hotel_facility values ('2006','3004')

select * from traveler
select * from hotel
select * from facilities
select * from hotel_facility

-- inner join test

select u.userid as id, h.hotelid,h.hotelname, f.facilityname
from hotel as h
inner join hotel_facility as hf
on h.hotelid = hf.hotelid
inner join facilities as f 
on f.facilityid = hf.facilityId
inner join travelclassics as u
on h.userid = u.userid

select * from roomcatagory

alter table roomcatagory
add hotelid int 
constraint FK_roomhotelid foreign key (hotelid) 
references hotel(hotelid)

-- hotel faciilies with names
select u.userid as id, h.hotelid,h.hotelname, f.facilityname
from hotel as h
inner join hotel_facility as hf
on h.hotelid = hf.hotelid
inner join facilities as f 
on f.facilityid = hf.facilityId
inner join travelclassics as u
on h.userid = u.userid


alter table room
drop constraint FK_roomHotel
	
alter table room
drop COLUMN  hotelid

select * from room
sp_help room

create table hotel_roomCatagory(
hotelid int,
roomCatagoryId varchar(20),
numberOfRoom int,
constraint FK_hotelIdRoomCatagory foreign key(hotelid) references hotel(hotelId),
constraint FK_hotelRoomCatagoryId foreign key(roomcatagoryid) references roomcatagory(roomcatagoryid),
constraint PK_hotelRoomcatagory primary key (hotelid,roomcatagoryid),

)
-- break point

select * from hotel
select * from roomcatagory

insert into roomcatagory values('RC1','Single Rooms')
insert into roomcatagory values('RC2','Double Rooms ')
insert into roomcatagory values('RC3','Luxury room')
insert into roomcatagory values('RC4','Studio Rooms')
insert into roomcatagory values('RC5','Deluxe Rooms')


insert into room values('R1','yes','RC1')
insert into room values('R2','yes','RC1')
insert into room values('R3','no','RC1')
insert into room values('R4','yes','RC1')
insert into room values('R5','yes','RC1')



update roomcatagory set hotelid = '2001' , numberOfRoom = '20'
where roomCatagoryId = 'RC1'
update roomcatagory set hotelid = '2001' , numberOfRoom = '10'
where roomCatagoryId = 'RC2'
update roomcatagory set hotelid = '2001' , numberOfRoom = '5'
where roomCatagoryId = 'RC3'
update roomcatagory set hotelid = '2001' , numberOfRoom = '2'
where roomCatagoryId = 'RC4'
update roomcatagory set hotelid = '2001' , numberOfRoom = '3'
where roomCatagoryId = 'RC5'

update roomcatagory set roomCatagoryId = 'SR2'
where roomCatagoryId = 'RC1'
update roomcatagory set roomCatagoryId = 'SR3' 
where roomCatagoryId = 'RC3'
update roomcatagory set roomCatagoryId = 'SR4' 
where roomCatagoryId = 'RC4'
update roomcatagory set roomCatagoryId = 'SR5' 
where roomCatagoryId = 'RC5'

select * from room
select * from roomcatagory

insert into roomcatagory values('NR2','Double Rooms' , '2003' , '12')
insert into roomcatagory values('NR3','Luxury Rooms' , '2003' , '6')
insert into roomcatagory values('PR1','Single Rooms' , '2010' , '30')
insert into roomcatagory values('PR2','Luxury Rooms' , '2010' , '12')
insert into roomcatagory values('PR3','Studio Rooms' , '2010' , '8')
insert into roomcatagory values('PR4','Double Rooms' , '2010' , '25')
insert into roomcatagory values('ER1','Signle Rooms' , '2006' , '15')
insert into roomcatagory values('ER2','Double Rooms' , '2006' , '15')
insert into roomcatagory values('ER3','Luxury Rooms' , '2006' , '7')
insert into roomcatagory values('VR1','Single Rooms' , '2007' , '8')
insert into roomcatagory values('VR2','Double Rooms' , '2007' , '5')

insert into room values ('NH2' , 'yes' , 'NR3')
insert into room values ('NH3' , 'yes' , 'NR3')
insert into room values ('NH4' , 'yes' , 'NR2')
insert into room values ('PH1' , 'yes' , 'PR1')
insert into room values ('PH2' , 'yes' , 'PR3')
insert into room values ('PH3' , 'yes' , 'PR4')
insert into room values ('PH4' , 'yes' , 'PR1')
insert into room values ('VH1' , 'no' , 'VR1')
insert into room values ('VH2' , 'yes' , 'VR1')

alter table roomCatagory
add hotelid int,
numberofroom int, 
constraint FK_hotelidroomcatagory foreign key(hotelid) references hotel(hotelid)

select * from room
select * from roomCatagory
select * from hotel

update room set roomcatagoryId = 'SR1'

alter table room
add constraint FK_roomRoomCatagory foreign key(roomcatagoryid) references roomcatagory(roomcatagoryid)

insert into room values('NH1','yes','NR1')

insert into roomcatagory values('NR1','Single room','2003','20')

-- rooms and hotel check

select r.roomid,avalibility,ht.hotelname from room as r
inner join roomcatagory as rc 
on r.roomcatagoryId = rc.roomCatagoryId
inner join hotel as ht
on ht.hotelID = rc.hotelId
where r.roomcatagoryId = 'SR1' and r.avalibility = 'yes'

select * from room
select * from traveler
select * from reservation

delete from traveler where travelerid = '1010'

insert into reservation values ('RS1001','1004','R2')
insert into reservation values ('RS1002','1001','R3')
insert into reservation values ('RS1003','1005','R5')
insert into reservation values ('RS1004','1004','NH1')
insert into reservation values ('RS1005','1003','R1')

insert into reservation values ('RS1006','1006','NH2')
insert into reservation values ('RS1007','1007','NH3')
insert into reservation values ('RS1008','1008','PH1')
insert into reservation values ('RS1009','1009','PH3')
insert into reservation values ('RS1010','1010','VH2')

insert into reservation values ('RS1011','1003','PH2')
insert into reservation values ('RS1012','1006','PH3')
insert into reservation values ('RS1013','1005','R4')
insert into reservation values ('RS1014','1004','NH4')
insert into reservation values ('RS1015','1002','PH4')

select * from reservation_make

insert into reservation_make values('RS1001','1004','5')
insert into reservation_make values('RS1002','1004','2')
insert into reservation_make values('RS1003','1004','3')
insert into reservation_make values('RS1004','1004','2')
insert into reservation_make values('RS1005','1004','1')
insert into reservation_make values('RS1006','1006','4')
insert into reservation_make values('RS1007','1007','1')
insert into reservation_make values('RS1008','1008','2')
insert into reservation_make values('RS1009','1009','3')
insert into reservation_make values('RS1010','1010','1')
insert into reservation_make values('RS1011','1003','1')
insert into reservation_make values('RS1012','1006','3')
insert into reservation_make values('RS1013','1005','2')
insert into reservation_make values('RS1014','1004','4')
insert into reservation_make values('RS1015','1002','2')

update reservation_make set travelerID = '1005' where reservationId = 'RS1005'


select * from transactionTC

alter table transactionTc 
add value float(20)

alter table transactionTc 
alter column transactionTime time

insert into transactionTC values ('10001','20:11','2023-12-25','RS1001','14000.00')
insert into transactionTC values ('10002','10:11','2024-01-02','RS1001','12000.00')
insert into transactionTC values ('10003','15:11','2024-01-03','RS1001','16000.00')
insert into transactionTC values ('10004','19:11','2024-01-03','RS1001','10000.00')
insert into transactionTC values ('10005','7:11','2024-01-03','RS1001','17000.00')


insert into transactionTC values ('10005','08:11','2024-01-03','RS1006','20000.00')
insert into transactionTC values ('10006','09:10','2024-01-03','RS1006','20000.00')
insert into transactionTC values ('10007','10:11','2024-01-03','RS1007','30000.00')
insert into transactionTC values ('10008','11:11','2024-01-03','RS1008','19000.00')
insert into transactionTC values ('10009','12:11','2024-01-03','RS1009','12000.00')
insert into transactionTC values ('10010','13:11','2024-01-04','RS1010','15000.00')
insert into transactionTC values ('10011','14:11','2024-01-04','RS1011','16000.00')
insert into transactionTC values ('10012','15:11','2024-01-04','RS1012','13000.00')
insert into transactionTC values ('10013','16:11','2024-01-04','RS1013','21000.00')
insert into transactionTC values ('10014','17:11','2024-01-04','RS1014','35000.00')
insert into transactionTC values ('10015','18:11','2024-01-05','RS1015','23000.00')
insert into transactionTC values ('10016','19:11','2024-01-03','RS1016','20000.00')
insert into transactionTC values ('10017','20:11','2024-01-03','RS1005','20000.00')

insert into transactionTC values ('10005','7:11','2024-01-03','RS1005','20000.00')


update transactionTC set reservationId = 'RS1003' where transactionID = '10003'
update transactionTC set reservationId = 'RS1004' where transactionID = '10004'
update transactionTC set reservationId = 'RS1005' where transactionID = '10005'

create trigger prntMsg 
on transactionTc
after insert
as
begin
print 'values inserted';
end

select * from hotel

-- one hotel booking details

select r.reservationid, tc.value , r.roomID ,rc.hotelid, rc.roomCatagoryName, r.travelerID , t.travelerName
from reservation as r
inner join room as rm
on r.roomid = rm.roomid 
inner join roomcatagory as rc
on rm.roomcatagoryId = rc.roomcatagoryId 
inner join transactionTC as tc
on r.reservationId = tc.reservationId
inner join traveler as t
on t.travelerID = r.travelerID
where hotelId = '2010'


-- stroed procedure for hotel booking details

create procedure hotelbooking @hotelid int
as
select r.reservationid, tc.value , r.roomID ,rc.hotelid, rc.roomCatagoryName, r.travelerID , t.travelerName
from reservation as r
inner join room as rm
on r.roomid = rm.roomid 
inner join roomcatagory as rc
on rm.roomcatagoryId = rc.roomcatagoryId 
inner join transactionTC as tc
on r.reservationId = tc.reservationId
inner join traveler as t
on t.travelerID = r.travelerID
where hotelId = @hotelid
go

exec hotelbooking @hotelid = '2001'


--  all transaction value each hotel  

select sum(tc.value) as totlevalue , rc.hotelid 
from reservation as r
inner join room as rm
on r.roomid = rm.roomid 
inner join roomcatagory as rc
on rm.roomcatagoryId = rc.roomcatagoryId 
inner join transactionTC as tc
on r.reservationId = tc.reservationId
inner join traveler as t
on t.travelerID = r.travelerID
where hotelId = '2001'
group by
rc.hotelid

-- stored procedure for sum of hotel transaction

create procedure sumoftransaction @hotelid int
as
select sum(tc.value) as TotleValue , rc.hotelid, ht.hotelName
from reservation as r
inner join room as rm
on r.roomid = rm.roomid 
inner join roomcatagory as rc
on rm.roomcatagoryId = rc.roomcatagoryId 
inner join transactionTC as tc
on r.reservationId = tc.reservationId
inner join hotel as ht
on ht.hotelid = rc.hotelid
where rc.hotelId = @hotelid
group by
rc.hotelid,
ht.hotelName
go

exec sumoftransaction @hotelid = '2010'

drop procedure sumoftransaction

select sum(tc.value) as totlevalue , rc.hotelid, ht.hotelName
from reservation as r
inner join room as rm
on r.roomid = rm.roomid 
inner join roomcatagory as rc
on rm.roomcatagoryId = rc.roomcatagoryId 
inner join transactionTC as tc
on r.reservationId = tc.reservationId
inner join hotel as ht
on ht.hotelid = rc.hotelid
where rc.hotelId = '2001'
group by
rc.hotelid,
ht.hotelName



select * from transactionTC
select * from room
select * from roomcatagory

update room set roomcatagoryid = 'SR2' where roomId = 'R2'


--rooms avalibility each hotels
select r.roomid ,avalibility, ht.hotelname as Hotel_Name, rc.roomcatagoryname as Room_Catagory
from room as r
inner join roomcatagory as rc
on r.roomcatagoryid = rc.roomcatagoryid
inner join hotel as ht
on rc.hotelid = ht.hotelid

-- Stored procedure for Checking room names and hotel name which it belongs
create procedure roomavalability @hotelid int
as
select r.roomid , avalibility,ht.hotelname, rc.roomcatagoryname
from room as r
inner join roomcatagory as rc
on r.roomcatagoryid = rc.roomcatagoryid
inner join hotel as ht
on rc.hotelid = ht.hotelid
where ht.hotelid = @hotelid
go

exec roomavalability @hotelid = '2003'

BEGIN
    DROP PROCEDURE roomavalability
END;

--Stored procedure for Totle rooms in hotel

create procedure totlerooms @hotelid int
as
select sum(numberofroom) as TotleRooms , ht.hotelname as HotelName
from roomcatagory as rc
inner join hotel as ht
on rc.hotelid = ht.hotelid
where ht.hotelid = @hotelid
group by 
ht.hotelname
go 

drop procedure totlerooms

exec totlerooms @hotelid = '2003'

select * from roomcatagory


alter table report 
add destination varchar(20)

--trigger for insert data for report

create trigger reportdata
on report
after insert
as
begin
print 'values insert'
end

select * from report
select * from traveler
insert into report values ('TR1001' , 'Wonder full journy' , 'i have get wonder full experince with that journy' , '1001' , '250KM' )

--get user distination
select t.travelerid ,t.travelername , re.destination 
from traveler as t
inner join report as re
on re.travelerid = t.travelerid

--List of Travelers of a particular location

select travelerid , travelername ,travalerCity
from traveler
where travalerCountry = 'USA'  

--procedure for List of Travelers of a particular location
create procedure travelarlocation @location varchar(20)
as 
select travelerid , travelername , travalerCity
from traveler
where travalerCountry = @location 
go  

exec travelarlocation @location = 'indonesia'

--list of traveler particular location

select travelerID,travelerName as TravelerName,travalerCity as City,travalerCountry as Country from traveler   

exec travelarlocation @location = 'matara'




insert into travelclassics values('22','nimal','1234','traveler')
insert into travelclassics values('28','John','johon123','traveler')
insert into travelclassics values('24','ravan','rama234','traveler')
insert into travelclassics values('25','intan','nawa456','traveler')
insert into travelclassics values('26','pramudi','pramu456','traveler')
insert into travelclassics values('27','puthri','put1234','traveler')

insert into travelclassics values('23','Pavith','7878','traveler')

insert into traveler values ('1012','nimal','nimal@mail.com','No78','galle','Sri lanka','20')

insert into traveler values ('1013','John','Johm@mail.com','No987','Califonia','USA','28')
insert into traveler values ('1014','ravan','ravan@mail.com','No111','Munbai','india','24')
insert into traveler values ('1015','pramudi','pramudi@mail.com','No358/12','Akurassa','Sri lanka','26')
insert into traveler values ('1016','intan','intan@mail.com','No02','Jakartha','indonesia','25')

insert into traveler values ('1012','nimal',null,'No78',null,'Sri lanka','22')

update traveler set travalerCity = 'Jakartha ' , travalerCountry = 'indonesia'
where travelerID = '1011'

select * from traveler

delete from traveler where travelerID = '1014'