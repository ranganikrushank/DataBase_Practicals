use krushank_dbms_assignments;



/* Select first names & last names of all the students. Also display the names
(First and Last) comma separated and space separate, along with the
appropriate aliases. */

select fName,lName from tblstudent;





/* Display the city names of all the students. */

select city from tblstudent;





/* Display the names and birth dates of all the students whose names start with
either ‘M’ or with ‘P’. */

select fName, birthdate from tblstudent where fname like 'M%'or fName like 'P%';





/* Display the entire student IDs who are from ‘Maharashtra’. */

select studentID from tblstudent where state ='Maharastra';





/* Display the entire student first and last names having age equal to or     
       greater than 20.  */
       
select fName , lName from tblstudent where age>=20;



/*  Display all the male student first names, last names and year of 
     admission that are from ‘Surat’.*/
     
select fName , lName , adm_year from tblstudent where city="Surat" and gender="Male";




/* Display the student IDs and branch names of all the students. */

select s.studentID , b.branch_name from tblstudent s
join tblbranch b on s.branch_id = b.branch_id;




/* Display the first and last names of all the students who belong to D1 building */

select fName, lName from tblstudent where branch_id 
in (select branch_id from tblbranch where building = 'D1');



/* Display all the student IDs and registration numbers that are registered for
   more than 4 years. */

select studentID , reg_no from tblstudent where adm_year<2019;




/* Display the entire faculty first and last names that belong to D1  building */

select fname, lname from tblfaculty where dept_id 
in (select branch_id from tblbranch where building = 'D1');  



/* Display all the student IDs and cities in the descending order of their year of
   admission. */

select studentID,city from tblstudent order by adm_year desc;