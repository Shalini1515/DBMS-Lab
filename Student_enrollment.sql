drop table book_adoption;
create table student(regno varchar2(15), name varchar2(15), major varchar2(15),bdate date,
                        primary key(regno));
desc student;
create table course(course_id int,cname varchar2(15),dept varchar2(15),
                    primary key(course_id));
create table text(isbn int, book_title varchar2(15), publisher varchar2(15),author varchar2(15),
                    primary key(isbn));
create table Book_adoption( course_id int, isbn int,sem int,
                            primary key(course_id,isbn),
                            foreign key(course_id) references course(course_id)on delete cascade,
                            foreign key(isbn) references text(isbn)on delete cascade);
create table enroll(regno varchar2(15),course_id int,sem int,marks int,
                    primary key(regno,course_id),
                    foreign key(course_id) references course(course_id)on delete cascade,
                    foreign key(regno) references student(regno)on delete cascade);
                    
insert into student values('&REGNO'  ,'&NAME','&MAJOR','&BDATE'); 
select * from student;
insert into course values(&course_id  ,'&cNAME','&dept'); 
select * from enroll;
insert into text values(&isbn,'&book_title','&publisher','&author'); 

insert into book_adoption values(&course_id  ,&isbn,&sem);
insert into enroll values('&REGNO',&course_id, &sem ,&marks); 