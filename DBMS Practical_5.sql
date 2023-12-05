use gi_practicals;

create table student       (studentID int primary key, fName varchar(20),
							mName varchar(20), lname varchar(20),
							city varchar(10),state varchar(10),country varchar(7),
                            birthdate date,gender varchar(6),reg_no int(7),branch_id char(2),
                            adm_year int(4));

insert into student value("001","Parth","Mohon","Patel","Surat","Gujarat","India","1991-06-25","Male","101256","CO","2006"),
							("002","Mayur","Sahil","Rathod","Baroda","GUjarat","India","1990-08-24","Male","101289","CO","2006"),
                            ("003","Ronak","Ramesh","Panchal","Pune","Maharastra","India","1990-04-11","Male","205168","CI","2005"),
                            ("004","Chirag","Hasmukh","Mor","Ahmedabad","GUjarat","India","1991-08-15","Male","200589","ME","2005"),
                            ("005","Prachi","Divesh","Dhimaar","Mumbai","Maharastra","India","1989-07-14","Female","105456","EC","2004"),
                            ("006","Hetvi","Rahul","Kumar","Baroda","GUjarat","India","1989-08-18","Female","104565","EC","2004"),
                            ("007","Vipul ","Mahesh","Patil","Nasik","Maharastra","India","1988-08-15","Male","200554","ME","2005"),
                            ("008","Vikas","Narotaam","Ojha","Rajkot","GUjarat","India","1989-12-21","Male","200458","EL","2005"),
                            ("009","Aatul","Anil","Avasthi","Bhavnagar","GUjarat","India","1990-06-05","Male","101054","CO","2006"),
                            ("010","Mayuri","Rajnish","Ravat","Surat","GUjarat","India","1989-02-28","Female","201024","EC","2004");
                            
desc student;

select * from student;

select fname from student where fname like 'V%';
select fname,mname,lname from student where fname like 'P%i';

# Search the name where 'a' is on the 3 position 
select fname,mname,lname from student where fname like '__a%';

# Search the name where it has only 6 characters length
select fname,mname,lname from student where fname like '______';

# Search the name where it has only 6 characters length and has r in 4 position
select fname,mname,lname from student where fname like '___r__';

# Search the name where 'i' is on the last position
select fname,mname,lname from student where fname like '%i';

# Search the name which starts with vowel (a,e,i,o,u) 
select fname,mname,lname from student where fname like 'a%' or 'e%' or 'i%' or 'o%' or 'u%';

# Search the name which starts with vowel (a,e,i,o,u) USING REGEXP
select fname,mname,lname from student where fname regexp '^[aeiou]';
select fname,mname,lname from student where fname regexp '^[aeiou]' and fname regexp '[aeiou]$';