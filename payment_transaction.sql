create table Users(UID int primary key auto_increment, name varchar(20) not null);
insert into Users values(1, 'Aayush');
insert into Users values(2, 'Bhavesh');
insert into Users values(3, 'Cindy');

create table payment(PID int primary key auto_increment, UID int, Amount int check(Amount>0), Date datetime default current_timestamp,constraint pay foreign key(UID) references Users(UID));
insert into payment(PID, uid, amount) values(10, 1, 1000);
insert into payment(PID, uid, amount) values(11, 1, 2000);
insert into payment(PID, uid, amount) values(12, 2, 3000);
insert into payment(PID, uid, amount) values(13, 3, 4000);


create table history(UID int,PID int,Name varchar(20),Amount int,Date datetime);
insert into history(UID,PID,Name,Amount,Date) select  u.uid, p.pid, u.name, p.amount, p.date from Users u, payment p where u.uid = p.uid;

select * from Users;
select * from payment;
select * from history;
