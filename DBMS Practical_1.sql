create database gi_practicals;
use gi_practicals;

drop table tbl1;

create table tbl1(sr_no int NOT NULL,fname varchar(20),lname varchar(20));

insert into tbl1 value (1,"Krushank","Rangani"),
					   (2,"Diya","Jariwala"),
                       (3,"Krupali","Patel"),
                       (4,"Nishi","Patel"),
                       (5,"Rahul","Salunke");
                       
select * from tbl1;


create table tbl2(id int unique not null, fname varchar(20), lname varchar(20));

insert into tbl2 value (1,"Krushank","Rangani"),
					   (2,"Diya","Jariwala"),
                       (3,"Krupali","Patel"),
                       (4,"Nishi","Patel"),
                       (3,"Rahul","Salunke");
					
select * from tbl2;   # SHOWS ERROR FOR DUPLICATE values


create table tbl3(id int unique default 0, fname varchar(20));

insert into tbl3 values (1,"Krushank");
insert into tbl3 (fname) values ("Krupali");
insert into tbl3 (id,fname) values (null,"Nishi");

desc tbl3;
select * from tbl3;