use gi_practicals;

create table emp(eid int, ename varchar(20), city varchar(20), zipcode int, email varchar(20));

insert into emp values
(1,"aaa","acity",101,"a@gmail.com"),
(2,"bbb","bcity",102,"b@gmail.com"),
(3,"ccc","ccity",103,"c@gmail.com"),
(4,"ddd","dcity",104,"d@gmail.com"),
(5,"eee","ecity",105,"e@gmail.com");

desc emp;

select * from emp;

create table dept (did int, dname varchar(20), dcity varchar(20));

insert into dept values 
(1,"hr","acity"),
(2,"sales","acity"),
(11,"dev","bcity"),
(12,"testing","zcity");

desc dept;

select * from dept;



# inner join
select * from emp inner join dept on did = eid ;
select * from emp join dept on did = eid ;
select * from emp inner join dept on did <> eid ;
select * from emp inner join dept on did = eid where zipcode = 101;



# left outer join
select * from emp left outer join dept on did = eid;
select * from emp left  join dept on did = eid;
select * from emp left outer join dept on did <> eid;



# right outer join
select * from emp right outer join dept on did = eid;
select * from emp right join dept on did = eid;
select * from emp right outer join dept on did <> eid;




# self join
select * from emp e1,emp e2;
select * from emp e1,emp e2 where e1.eid>3;




# cartesian product
select * from emp  full join dept;
select * from emp full join emp e2;