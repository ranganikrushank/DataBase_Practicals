use gi_practicals;

create table emp2(id int,name varchar(20),age int,salary int);

insert into emp2 values(1,'dhruv',20,10000);
insert into emp2 values(2,'viken',20,1000);

desc emp2;

select * from emp2;
set autocommit = 0;



insert into emp2 values(3,'bhavdeep',20,100);
insert into emp2 values(4,'kishan',20,200000000);

rollback ;
commit ;
insert into emp2 values(5,'mukesh',20,12000);
savepoint lable1;

insert into emp2 values(6,'anukesh',20,11000);
savepoint lable2;
insert into emp2 values(7,'aaa',20,11000);
savepoint lable1;

insert into emp2 values(8,'bbb',20,11000);
rollback to lable1;


select * from emp2;