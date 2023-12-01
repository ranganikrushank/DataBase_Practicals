create database krushank_dbms_assignments;

use krushank_dbms_assignments;
show tables;

/* TABLE :- 01 */


create table tblbranch
(branch_id varchar(5) primary key , branch_name varchar(30) not null,
building varchar(20) , other varchar(30));

desc tblbranch;




/* TABLE :- 02 */

create table tblstudent ( studentID int primary key , fName varchar(20) not null,
						mName varchar(20) , lname varchar(20) , address varchar(50) ,
						area varchar(10) , city varchar(10) , state varchar(10) , country varchar(7),
						pincode int , phone_number varchar(10) , birthdate date ,
						gender varchar(6) not null , reg_no int(7) , branch_id char(2) not null,
						adm_year int(4) , email varchar(30));

desc tblstudent;




/* TABLE :- 03 */

create table tblSubject  (subject_id varchar(6) primary key , subject_name varchar(30) not null,
                          theory_hours int(1) , teaching_hours int(1) , practical_hours int(1) , credit int(1));

desc tblSubject;



/* TABLE :- 04 */

create table tblFaculty ( face_id varchar(5) primary key , fname varchar(30) not null,
						mname varchar(20) , lname varchar(20) , address varchar(30), 
                        area varchar(10), city varchar(10), state varchar(10), country varchar(5),
						pincode varchar(7), phone_number varchar(10), email_id varchar(30),
						join_date date, gender char(6) not null , qualification varchar(30),
						designation varchar(30), dept_id char(2), add_duties varchar(50) );

desc tblFaculty;



/* TABLE :- 05 */

create table tblCourse ( course_id varchar(8) primary key , sub_id varchar(7) not null,
                        faculty_id varchar(7) not null , semester int(1) not null , branch_id char(2) );

desc tblCourse;


/* TABLE :- 06 */

create table tblStudentCourse  ( stuCouID varchar(5) primary key,stuID int(7) not null,
								courseId varchar(6) not null , month varchar(10),year int(4));

desc tblStudentCourse;


/* TABLE :- 07 */

create table tblStudentResult (id varchar(7) primary key,stuCouID varchar(5) not null,
                               creditObtained int(10) not null , isCleared varchar(3) , yearApp int(4));

desc tblStudentResult; 


/* TABLE :- 08 */

create table tblOneTimeFees(id varchar(10) primary key, stuid int(10) not null , 
                           particular varchar(30) , amount int(10), dateSub date , isRefundable varchar(3));

desc tblOneTimeFees;


/* TABLE :- 09 */

create table tblTutionFees (id varchar(10) primary key , stuID int(10) not null,semester int(1),
                           Amount int(5) , dateSub date);

desc tblTutionFees;


/* TABLE :- 10 */

create table tblExamFee (id varchar(10) primary key , stuID int(10) not null,
                         couID varchar(10) not null , amount int(10) , dateSub date);

desc tblExamFee;