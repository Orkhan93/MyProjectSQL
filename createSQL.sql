CREATE TABLE Customer(
Id integer primary key autoincrement,
Name varchar(50),
Surname varchar(50),
Email varchar(50),
Phone varchar(50),
Password varchar(50),
Role_Id integer,

constraint customer_to_role
foreign key (Role_Id)
references Role(Id)

);

CREATE TABLE Aptek(
Id integer primary key autoincrement,
Name varchar(50),
Email varchar(50),
Phone varchar(50),
PhoneCity varchar(50),
Password varchar(50),
City_Id integer,
Role_Id integer,

constraint aptek_to_city
foreign key (City_Id)
references City(Id)

constraint aptek_to_role
foreign key (Role_Id)
references Role(Id)
);

CREATE TABLE City(
Id integer primary key autoincrement,
NameCity varchar(50)
);

CREATE TABLE Discrit(
Id integer primary key autoincrement,
NameDiscrit varchar(50),
City_Id integer,

constraint discrit_to_city
foreign key (City_Id)
references City(Id)
);

CREATE TABLE Orders(
Id integer primary key autoincrement,
Image varchar(50),
MessageText text,
DataTime datatime,
Aptek_Id integer,
Customer_Id integer,

constraint orders_to_aptek
foreign key (Aptek_Id)
references Aptek(Id)


constraint orders_to_customer
foreign key (Customer_Id)
references Customer(Id)
);

CREATE TABLE Messages(
Id integer primary key autoincrement,
MessageText text,
DataTime datatime,
Aptek_Id integer,
Customer_Id integer,

constraint messages_to_aptek
foreign key (Aptek_Id)
references Aptek(Id)


constraint messages_to_customer
foreign key (Customer_Id)
references Customer(Id)
);

CREATE TABLE Rating(
Id integer primary key autoincrement,
RateAmount integer,
Aptek_Id integer,
Customer_Id integer,

constraint rating_to_aptek
foreign key (Aptek_Id)
references Aptek(Id)


constraint rating_to_customer
foreign key (Customer_Id)
references Customer(Id)
);

CREATE TABLE Comment(
Id integer primary key autoincrement,
Topic varchar(100),
Detail text,
Customer_Id integer,

constraint comment_to_customer
foreign key (Customer_Id)
references Customer(Id)
);

CREATE TABLE Role(
Id integer primary key autoincrement,
NameRole varchar(50)
);



insert into City(NameCity) values('Baki'),('Sumqayit'),('Abseron'),('Gence'),('Sirvan'),('Seki'),('Mingecevir');
insert into Discrit(NameDiscrit,City_Id) values('S.Qurbanov',2),('Naxcivasnki',3),('U.Hacibeyov',4),('H.Eliyev',4),('Ereblinski',5);
select * from Discrit;

insert into Aptek(Name,Email,Phone,PhoneCity,Password,City_Id) values('DoktaAvromed','dokta228@mail.ru','+994518188121','0123758809','123456789',1);
select * from Aptek where Id=1;

insert into Customer(Name,Surname,Email,Phone,Password) values ('Serxan','Mustafazade','serxan@mail.ru','+994518188121','333999');
insert into Role(NameRole) values('Admin');
select * from Customer;
select * from Role;
select *from Discrit;

select * from City;




