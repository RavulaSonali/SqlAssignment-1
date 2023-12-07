
create database OurExerciseDb
on primary (name='OurExerciseDb',Filename='D:\Mphasis\SQL SERVER\Assignments\Day1\OurExercise_Db.mdf',
size=24MB,MaxSize=48MB,filegrowth=8MB)
log on (name='OurExercise_Db_log',Filename='D:\Mphasis\SQL SERVER\Assignments\Day1\OurExcercise_Db_log.ldf')
COLLATE SQL_Latin1_General_CP1_CI_AS

use OurExerciseDb
create table Product
(PId int primary key identity(50,1) ,
PName nvarchar(50) not null,
PPrice float check(PPrice>=50 and PPrice<=100000) ,
PCompany nvarchar(50)check(PCompany in('SamSung', 'Apple','Redmi','HTC')),
PQty int check(PQty>=1) default 1
)

insert into Product values('Mobile',20000,'Redmi',1)
insert into Product values('IPad',100000,'Apple',2)
insert into Product values('Tablet',15000,'SamSung',1)
insert into Product values('Laptop',45000,'HTC',1)
insert into Product(PName,PPrice,PCompany) values('EarPods',8000,'SamSung')

select * from Product 



