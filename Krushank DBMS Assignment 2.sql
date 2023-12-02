use krushank_dbms_assignments;


/* TABLE :- 01 */


insert into tblbranch value
("CO","Computer","D1","First building after Admin"),
("EC","Electronics & Communication","D2","Next to D1"),
("EL","Electrical","D3","Opposite Site Office"),
("ME","Mechanical","D7","Next to D6"),
("CI","Civil","D6","Building, next to Canteen"),
("AP","Humanities","D7","Applied Science Department");

select *from tblbranch;

drop table tblstudent;
/* TABLE :- 02 */

create table tblstudent
( studentID int primary key, fName varchar(20) not null, mName varchar(20),
lname varchar(20),address varchar(50),area varchar(10),city varchar(10),
state varchar(10),country varchar(7),pincode int,phone_number varchar(10),
birthdate date,age int,gender varchar(6) not null,reg_no int(7),
branch_id char(2) not null, adm_year int(4), email varchar(30));

insert into tblStudent value

("001","Parth","Mohon","Patel","Sumangal","Bhatar","Surat","Gujarat","India",
791837,7778888578,"1991-06-25",21,"Male",101256,"CO",2006,"parth29@gmail.com"),

("002","Mayur","Sahil","Rathod","Adityanagar","Bhatar","Baroda","GUjarat","India",
629272,2579237334,"1990-08-24",18,"Male",101289,"CO",2006,"mayur@gmail.com"),

("003","Ronak","Ramesh","Panchal","Anandmahal","adajan","Pune","Maharastra","India",
283893,4563459875,"1990-04-11",17,"Male",205168,"CI",2005,"ronak@gmail.com"),

("004","Chirag","Hasmukh","Mor","anandnagar","bandra","Ahmedabad","GUjarat","India",
726829,2349874561,"1991-08-15",14,"Male",200589,"ME",2005,"chirag@yahoo.com"),

("005","Prachi","Divesh","Dhimaar","kishornagar","malad","Mumbai","Maharastra","India",
452862,3451234569,"1989-07-14",22,"Female",105456,"EC",2004,"prachi@outlook.com"),

("006","Hetvi","Rahul","Kumar","Sumangal","bhatar","Baroda","GUjarat","India",
791837,1239876543,"1989-08-18",20,"Female",104565,"EC",2004,"hetvi@outlook.com"),

("007","Vipul ","Mahesh","Patil","Adityanagar","Bhatar","Nasik","Maharastra","India",
629272,9876543789,"1988-08-15",25,"Male",200554,"ME",2005,"vipul@outlook.com"),

("008","Vikas","Narotaam","Ojha","Anandmahal","adajan","Rajkot","GUjarat","India",
283893,5678970569,"1989-12-21",19,"Male",200458,"EL",2005,"vikas@ckp.com"),

("009","Aatul","Anil","Avasthi","anandnagar","bandra","Bhavnagar","GUjarat","India",
726829,2398063467,"1990-06-05",23,"Male",101054,"CO",2006,"aatul@ckp.com"),

("010","Mayuri","Rajnish","Ravat","kishornagar","malad","Surat","GUjarat","India",
452862,4545678769,"1989-02-28",22,"Female",201024,"EC",2004,"mayuri@ckp.com");


select * from tblstudent;



/* TABLE :- 03 */

insert into tblSubject value
("ss101","DBMS","3","0","2","3"),
("ss201","Communication System","3","1","2","4"),
("ss202","Digital Electronics","3","1","2","4"),
("ss301","Electrical Circuit Theory","3","0","0","2"),
("ss401","Engineering Mechanics","2","1","2","3"),
("ss701","Maths – III","3","0","0","2"),
("ss601","Surveying & Levelling","2","1","1","3"),
("ss702","Engineering Chemistry","2","0","2","2");


select * from tblSubject;


/* TABLE :- 04 */



insert into tblFaculty value
("f101","Chetan","K","Solanki","sumangal","bhatar","Surat","Gujarat","India",397001,
8876987322,"chetan@ckp.com","2004-07-21","Male","BE(Computer)","Lecturer","CO",
"Proxy Administrator"),

("f302","Milind",null,"Trivedi","anandnagar","adajan","Baroda","Gujarat","India",
397006,9871239874,"milindtrivedi@gmail.com","2005-11-22","Male","BE(Electrical)",
"Lecturer","EL","Embedded Lab"),

("f203","Vijayendra","A","Desai","gokulnagar","varacha","Surat","Gujarat","India",
397006,9813236789,"vijayendra@ckpcet.com","2005-01-25","Male","ME(EC)","Lecturer",
"EC","T & P(EC) In Charge"),

("f705","Kalpesh","D","Mania","aditya","adajan","Rajkot","Gujarat","India",397006,
3451237894,"kalpesh@yahoo.com","2002-03-02","Male","ME(Mechanical)",
"Lecturer","ME","Examination"),

("f801","Mitesh",null,"Joshi","sumangal","bhatar","Surat","Gujarat","India",397001,
9876298613,"mitesh@yahoo.com","2000-04-30","Male","MSc(Maths)","Lecturer",
"AP","Sports Committee incharge"),

("f811","Deepa",null,"Kapoor","bhaktinagar","pal-adajan","Surat","Gujarat","India",
397009,9898987654,"deepa@gmail.com","1999-05-06","Female","phD,Msc(physics)",
"Assistant Professor","AP","Physics Lab incharge"),

("f605","Arun",null,"Bharoniya","nav","bhatar","Surat","Gujarat","India",397001,
8967256781,"arun@ckp.com","2000-10-11","Male","ME(Civil)","Lecturer","CI",
"Main Lab-incharge");

select * from tblFaculty;


/* TABLE :- 05 */

insert into tblCourse value

("c001","ss101","f101","7","CO"),
("c002","ss201","f203","4","EC"),
("c003","ss202","f203","4","EC"),
("c004","ss301","f302","5","EL"),
("c005","ss401","f705","2","ME"),
("c006","ss701","f801","4","AP"),
("c007","ss601","f605","1","CI"),
("c008","ss702","f811","1","AP");

select * from tblCourse;


/* TABLE :- 06 */

insert into tblStudentCourse value

("sc101","001","c001","July","2009"),
("sc201","002","c002","January","2007"),
("sc203","003","c003","January","2007"),
("sc304","004","c004","July","2007"),
("sc705","005","c005","January","2006"),
("sc606","006","c006","January","2006"),
("sc817","007","c007","July","2005"),
("sc807","008","c008","July","2005"),
("sc710","009","c005","January","2007"),
("sc205","010","c003","January","2006");

select * from tblStudentCourse;


/* TABLE :- 07 */

insert into tblStudentResult value

("r01","sc101","2","Yes","2009"),
("r02","sc202","3","Yes","2007"),
("r03","sc203","1","No","2007"),
("r04","sc304","1","Yes","2008"),
("r05","sc705","1","No","2006"),
("r06","sc606","2","Yes","2006"),
("r07","sc817","1","No","2005"),
("r08","sc807","2","Yes","2006"),
("r09","sc710","1","No","2007"),
("r10","sc205","3","Yes","2006");

select * from tblStudentResult;



/* TABLE :- 09 */

insert into tblTutionFees value

("tf001","001","7","20000","2009-07-01"),
("tf002","002","4","20000","2007-01-01"),
("tf003","003","5","20000","2007-01-01"),
("tf004","004","5","20000","2007-07-01"),
("tf005","005","2","20000","2006-01-01"),
("tf006","006","4","20000","2006-01-01"),
("tf007","007","1","20000","2005-07-01"),
("tf008","008","1","20000","2005-07-01"),
("tf009","009","2","20000","2007-01-01"),
("tf010","010","4","20000","2006-01-01");

select * from tblTutionFees;


/* TABLE :- 10 */

insert into tblExamFee value

("ef001","001","c001","200","2009-07-01"),
("ef002","002","c002","200","2007-01-01"),
("ef003","003","c003","200","2007-01-01"),
("ef004","004","c004","200","2008-07-01"),
("ef005","005","c005","200","2006-01-01"),
("ef006","006","c006","200","2006-01-01"),
("ef007","007","c007","200","2005-07-01"),
("ef008","008","c008","200","2006-07-01"),
("ef009","009","c005","200","2007-01-01"),
("ef010","010","c003","200","2006-01-01");

select * from tblExamFee;