use gi_practicals;

create table tblbranch(branch_id varchar(5) , branch_name varchar(30) , building varchar(20) ,
other varchar(30));

insert into tblbranch value("CO","Computer","D1","First building after Admin"),
						   ("EC","Electronics & Communication","D2","Next to D1"),
                           ("EL","Electrical","D3","Opposite Site Office"),
                           ("ME","Mechanical","D7","Next to D6"),
                           ("CI","Civil","D6","Building, next to Canteen"),
                           ("AP","Humanities","D7","Applied Science Department");
                           
desc tblbranch;

select *from tblbranch;

# IT WILL SHOW ERROR BECASUE WE ARE NOT USING SAFE UPDATE MODE
#update tblbranch set branch_id = 'CO' where branch_id = 'ME';
#insert into tblbranch values ('CO','COMPUTER','D1','First building after Admin');

# CAN BE UPDATED BECAUSE WE ARE USING SAFE UPDATE MODE 
SET SQL_SAFE_UPDATES = 0;
update tblbranch set branch_id = 'CO' where branch_id = 'ME';
insert into tblbranch values ('CO','COMPUTER','D1','First building after Admin');

select * from tblbranch;


# DELETE 
delete from tblbranch where branch_id = 'CO';
delete from tblbranch;
delete from tblbranch where 0;
truncate tblbranch;

select * from tblbranch;


drop table tblStudentResult;

create table tblStudentResult(id varchar(7),stuCouID varchar(5),creditObtained int(10),isCleared varchar(3),yearApp int(4));

insert into tblStudentResult value("r01","sc101","2","Yes","2009"),
								  ("r02","sc202","3","Yes","2007"),
                                  ("r03","sc203","1","No","2007"),
                                  ("r04","sc304","1","Yes","2008"),
                                  ("r05","sc705","1","No","2006"),
                                  ("r06","sc606","2","Yes","2006"),
                                  ("r07","sc817","1","No","2005"),
                                  ("r08","sc807","2","Yes","2006"),
                                  ("r09","sc710","1","No","2007"),
                                  ("r10","sc205","3","Yes","2006");

desc tblStudentResult;
select * from tblStudentResult;

select avg(creditObtained) from tblStudentResult;

# IT WILL SHOW INVALID FUNCTION
select * from tblStudentResult where creditObtained <avg(creditObtained);


select * from tblStudentResult;