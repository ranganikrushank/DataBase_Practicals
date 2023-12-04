use gi_practicals;

create table test2 (id int, name varchar(20),city varchar(20));

insert into test2 values 
(1,"aaa","st"),
(2,"bbb","st"),
(3,"ccc","pune"),
(4,"ddd","Pune"),
(5,"fff","PUne"),
(6,"eee","vapi"),
(7,"aaa","st"),
(8,"st","aaa");

desc test2;
select * from test2;

select id from test2;
select name from test2;
select city from test2;
select id,name from test2;



select city from test2 group by city;
select max(id) from test2;
select max(name) from test2;
select max(city) from test2;
select max(id),city from test2 group by city;
select sum(id) from test2;
select sum(id),city from test2 group by city order by city;
select sum(id),city from test2 group by city order by city desc;
select sum(id),city from test2 group by city order by city asc;