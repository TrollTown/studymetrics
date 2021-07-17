-- multiple choice
-- numeric input
-- whiteboard input

create table Users (
	id          serial,
	email       text,
	name		text,
	passwd		text,
    isTeacher   boolean,
	primary key (id)
);

create table History (
    questionID  integer,
    studentID   integer,
    finish_time timestamp,
    student_answer   text,
    result      boolean,
    approved    boolean,
    primary key (questionID,studentID,finish_time)
);

create table Questions (
    questionID  serial,
    subjectID   integer,
    moduleID    integer,
    submoduleID integer,
    questionText    text,
    questionType    text, -- 'mc' / 'numeric' / 'whiteboard'
    answer      text,
    photo       text,
    difficulty  integer,
    authorID    integer,
    starred     boolean,
    primary key (questionID)
);

create table Tags (
    questionID integer,
    tagName     varchar(255),
    primary key (questionID, tagName)
);

create table Subjects (
    subjectID   serial,
    subjectName text,
    primary key (subjectID)
);

create table Modules (
    moduleID    serial,
    subjectID   integer,
    moduleName  text,
    primary key (moduleID)
);

create table Submodules (
    submoduleID serial,
    moduleID    integer,
    submoduleName text,
    primary key (submoduleID)
);


insert into Users
values
    (1,'teacher1@gmail.com','TeacherOne','password1',True),
    (2,'teacher2@gmail.com','TeacherTwo','password2',True),
    (3,'teacher3@gmail.com','TeacherThree','password3',True),
    (4,'student1@gmail.com','StudentOne','password1',False),
    (5,'student2@gmail.com','StudentTwo','password2',False),
    (6,'student3@gmail.com','StudentThree','password3',False);

insert into Subjects
values
    (1,'Yr12 Maths Extension 2');

insert into Modules
values
    (1,1,'Complex Numbers'),
    (2,1,'Integration');

insert into Submodules
values 
    (1,1,'De Moivres Theorem'),
    (2,1,'Roots of Unity'),
    (3,2,'U-substitution'),
    (4,2,'Reduction Formulae');

insert into Questions
values 
    (1,1,2,4,'Multiple Choice Example 1: |1|2|3|4|','mc','B',null,2,1,0),
    (2,1,2,4,'Numeric Input Example 1:','numeric','4',null,1,2,0),
    (3,1,2,4,'Whiteboard Input Example 1','whiteboard',null,null,4,1,1),
    (4,1,1,2,'Multiple Choice Example 2: |1|2|3|4|','mc','C',null,5,1,0),
    (5,1,1,2,'Numeric Input Example 2:','numeric','3',null,2,3,0),
    (6,1,1,1,'Whiteboard Input Example 2','whiteboard',null,null,5,1,1),
    (7,1,1,1,'Multiple Choice Example 3: |1|2|3|4|','mc','D',null,3,1,0),
    (8,1,2,3,'Numeric Input Example 3:','numeric','4',null,6,1,0),
    (9,1,1,2,'Whiteboard Input Example 3','whiteboard',null,null,1,1,1),
    (10,1,2,4,'Multiple Choice Example 4: |1|2|3|4|','mc','D',null,8,3,0),
    (11,1,1,2,'Numeric Input Example 4:','numeric','1',null,6,1,0),
    (12,1,2,3,'Whiteboard Input Example 4','whiteboard',null,null,5,1,1),
    (13,1,2,4,'Multiple Choice Example 5: |1|2|3|4|','mc','B',null,1,2,0),
    (14,1,1,2,'Numeric Input Example 5:','numeric','3',null,4,2,0),
    (15,1,2,3,'Whiteboard Input Example 5','whiteboard',null,null,1,3,1),
    (16,1,2,3,'Multiple Choice Example 6: |1|2|3|4|','mc','B',null,4,1,0),
    (17,1,2,4,'Numeric Input Example 6:','numeric','3',null,4,3,0),
    (18,1,1,2,'Whiteboard Input Example 6','whiteboard',null,null,6,3,1),
    (19,1,2,3,'Multiple Choice Example 7: |1|2|3|4|','mc','D',null,8,2,0),
    (20,1,1,1,'Numeric Input Example 7:','numeric','3',null,8,3,0),
    (21,1,2,4,'Whiteboard Input Example 7','whiteboard',null,null,7,2,1),
    (22,1,1,2,'Multiple Choice Example 8: |1|2|3|4|','mc','C',null,10,2,0),
    (23,1,1,1,'Numeric Input Example 8:','numeric','1',null,5,2,0),
    (24,1,1,1,'Whiteboard Input Example 8','whiteboard',null,null,6,1,1),
    (25,1,2,3,'Multiple Choice Example 9: |1|2|3|4|','mc','C',null,10,2,0),
    (26,1,2,4,'Numeric Input Example 9:','numeric','3',null,9,2,0),
    (27,1,2,4,'Whiteboard Input Example 9','whiteboard',null,null,10,3,1),
    (28,1,1,2,'Multiple Choice Example 10: |1|2|3|4|','mc','B',null,5,2,0),
    (29,1,1,1,'Numeric Input Example 10:','numeric','1',null,4,1,0),
    (30,1,2,3,'Whiteboard Input Example 10','whiteboard',null,null,5,2,1),
    (31,1,1,2,'Multiple Choice Example 11: |1|2|3|4|','mc','D',null,5,3,0),
    (32,1,1,1,'Numeric Input Example 11:','numeric','4',null,4,1,0),
    (33,1,1,2,'Whiteboard Input Example 11','whiteboard',null,null,2,2,1),
    (34,1,2,4,'Multiple Choice Example 12: |1|2|3|4|','mc','D',null,5,3,0),
    (35,1,1,2,'Numeric Input Example 12:','numeric','1',null,7,1,0),
    (36,1,2,3,'Whiteboard Input Example 12','whiteboard',null,null,4,3,1),
    (37,1,2,3,'Multiple Choice Example 13: |1|2|3|4|','mc','B',null,5,3,0),
    (38,1,2,4,'Numeric Input Example 13:','numeric','2',null,5,1,0),
    (39,1,2,3,'Whiteboard Input Example 13','whiteboard',null,null,5,2,1),
    (40,1,2,3,'Multiple Choice Example 14: |1|2|3|4|','mc','C',null,3,1,0),
    (41,1,1,2,'Numeric Input Example 14:','numeric','1',null,4,2,0),
    (42,1,1,2,'Whiteboard Input Example 14','whiteboard',null,null,1,1,1),
    (43,1,2,3,'Multiple Choice Example 15: |1|2|3|4|','mc','C',null,6,2,0),
    (44,1,1,2,'Numeric Input Example 15:','numeric','2',null,2,3,0),
    (45,1,1,1,'Whiteboard Input Example 15','whiteboard',null,null,7,1,1),
    (46,1,2,4,'Multiple Choice Example 16: |1|2|3|4|','mc','A',null,5,3,0),
    (47,1,1,1,'Numeric Input Example 16:','numeric','4',null,4,3,0),
    (48,1,1,1,'Whiteboard Input Example 16','whiteboard',null,null,1,1,1),
    (49,1,1,2,'Multiple Choice Example 17: |1|2|3|4|','mc','C',null,3,2,0),
    (50,1,1,1,'Numeric Input Example 17:','numeric','1',null,1,1,0);

insert into Tags
values
    (1,'HSC 2007'),
    (2,'Baulkham Hills Trial 2078'),
    (3,'James Ruse Trial 2077'),
    (4,'HSC 2010'),
    (5,'Baulkham Hills Trial 2078'),
    (6,'James Ruse Trial 2077'),
    (7,'HSC 2007'),
    (8,'James Ruse Trial 2077'),
    (9,'HSC 2010'),
    (10,'Baulkham Hills Trial 2078'),
    (11,'Baulkham Hills Trial 2078'),
    (12,'HSC 2007'),
    (13,'HSC 2010'),
    (14,'HSC 2010'),
    (15,'HSC 2011'),
    (16,'James Ruse Trial 2077'),
    (17,'Baulkham Hills Trial 2078'),
    (18,'HSC 2011'),
    (19,'Baulkham Hills Trial 2078'),
    (20,'Baulkham Hills Trial 2078'),
    (21,'James Ruse Trial 2077'),
    (22,'Baulkham Hills Trial 2078'),
    (23,'Baulkham Hills Trial 2078'),
    (24,'James Ruse Trial 2077'),
    (25,'HSC 2007'),
    (26,'HSC 2010'),
    (27,'Baulkham Hills Trial 2078'),
    (28,'James Ruse Trial 2077'),
    (29,'HSC 2011'),
    (30,'James Ruse Trial 2077'),
    (31,'Baulkham Hills Trial 2078'),
    (32,'HSC 2010'),
    (33,'HSC 2007'),
    (34,'James Ruse Trial 2077'),
    (35,'HSC 2010'),
    (36,'HSC 2011'),
    (37,'James Ruse Trial 2077'),
    (38,'James Ruse Trial 2077'),
    (39,'Baulkham Hills Trial 2078'),
    (40,'HSC 2011'),
    (41,'HSC 2011'),
    (42,'James Ruse Trial 2077'),
    (43,'HSC 2007'),
    (44,'HSC 2010'),
    (45,'HSC 2010'),
    (46,'HSC 2011'),
    (47,'HSC 2007'),
    (48,'HSC 2007'),
    (49,'HSC 2011'),
    (50,'James Ruse Trial 2077');

insert into History
values 
    (10,5,'2021-07-17 10:34:09 AM','A',False,True),
    (28,4,'2021-06-24 10:34:09 AM','D',True,True),
    (7,6,'2021-07-14 10:34:09 AM','A',False,True),
    (22,5,'2021-06-30 10:34:09 AM','B',False,True),
    (40,5,'2021-03-05 10:34:09 AM','D',True,True),
    (43,5,'2021-04-30 10:34:09 AM','A',True,True),
    (49,6,'2021-02-07 10:34:09 AM','D',False,True),
    (43,6,'2021-03-29 10:34:09 AM','D',True,True),
    (43,6,'2021-03-04 10:34:09 AM','A',True,True),
    (10,6,'2021-03-03 10:34:09 AM','B',True,True),
    (16,4,'2021-06-26 10:34:09 AM','A',False,True),
    (7,5,'2021-05-26 10:34:09 AM','B',True,True),
    (43,5,'2021-06-09 10:34:09 AM','B',True,True),
    (16,5,'2021-03-06 10:34:09 AM','D',False,True),
    (1,6,'2021-03-18 10:34:09 AM','B',False,True),
    (1,5,'2021-05-20 10:34:09 AM','B',False,True),
    (1,4,'2021-05-23 10:34:09 AM','D',False,True),
    (49,5,'2021-06-05 10:34:09 AM','B',True,True),
    (10,6,'2021-02-27 10:34:09 AM','A',False,True),
    (40,5,'2021-06-14 10:34:09 AM','B',False,True),
    (43,4,'2021-05-01 10:34:09 AM','B',False,True),
    (7,5,'2021-07-03 10:34:09 AM','D',False,True),
    (7,6,'2021-02-17 10:34:09 AM','A',True,True),
    (43,6,'2021-04-10 10:34:09 AM','A',True,True),
    (46,6,'2021-03-24 10:34:09 AM','C',True,True),
    (43,5,'2021-02-19 10:34:09 AM','D',True,True),
    (19,4,'2021-02-26 10:34:09 AM','B',False,True),
    (10,4,'2021-05-31 10:34:09 AM','A',False,True),
    (7,4,'2021-06-09 10:34:09 AM','C',True,True),
    (10,5,'2021-01-18 10:34:09 AM','D',True,True),
    (34,6,'2021-03-14 10:34:09 AM','D',False,True),
    (22,4,'2021-02-27 10:34:09 AM','C',True,True),
    (19,4,'2021-03-08 10:34:09 AM','A',True,True),
    (19,5,'2021-07-08 10:34:09 AM','D',False,True),
    (1,4,'2021-07-06 10:34:09 AM','C',False,True),
    (34,5,'2021-01-02 10:34:09 AM','A',False,True),
    (40,4,'2021-02-14 10:34:09 AM','D',True,True),
    (37,4,'2021-05-24 10:34:09 AM','A',True,True),
    (34,4,'2021-02-20 10:34:09 AM','B',True,True),
    (43,5,'2021-03-09 10:34:09 AM','A',True,True),
    (43,5,'2021-06-22 10:34:09 AM','D',False,True),
    (28,6,'2021-02-14 10:34:09 AM','D',True,True),
    (19,5,'2021-01-24 10:34:09 AM','D',False,True),
    (34,5,'2021-02-06 10:34:09 AM','B',True,True),
    (19,5,'2021-01-07 10:34:09 AM','C',True,True),
    (31,5,'2021-01-19 10:34:09 AM','C',True,True),
    (19,5,'2021-03-31 10:34:09 AM','A',True,True),
    (1,6,'2021-04-27 10:34:09 AM','D',False,True),
    (43,5,'2021-01-31 10:34:09 AM','D',True,True),
    (7,5,'2021-03-25 10:34:09 AM','A',True,True),
    (49,5,'2021-06-20 10:34:09 AM','A',True,True),
    (40,5,'2021-01-23 10:34:09 AM','C',False,True),
    (25,4,'2021-01-27 10:34:09 AM','C',True,True),
    (19,6,'2021-04-11 10:34:09 AM','A',True,True),
    (49,4,'2021-05-05 10:34:09 AM','B',False,True),
    (16,4,'2021-01-06 10:34:09 AM','C',True,True),
    (7,4,'2021-03-16 10:34:09 AM','A',True,True),
    (16,4,'2021-06-18 10:34:09 AM','D',False,True),
    (1,6,'2021-01-03 10:34:09 AM','B',False,True),
    (19,6,'2021-06-22 10:34:09 AM','D',False,True),
    (13,4,'2021-04-19 10:34:09 AM','D',False,True),
    (43,5,'2021-02-16 10:34:09 AM','D',False,True),
    (16,4,'2021-04-30 10:34:09 AM','A',True,True),
    (7,5,'2021-05-08 10:34:09 AM','D',False,True),
    (4,4,'2021-01-10 10:34:09 AM','B',True,True),
    (7,4,'2021-06-28 10:34:09 AM','B',True,True),
    (28,6,'2021-06-11 10:34:09 AM','C',False,True),
    (46,4,'2021-03-31 10:34:09 AM','A',False,True),
    (34,6,'2021-01-15 10:34:09 AM','A',False,True),
    (46,6,'2021-04-03 10:34:09 AM','D',True,True),
    (40,6,'2021-07-05 10:34:09 AM','A',False,True),
    (13,4,'2021-05-22 10:34:09 AM','D',True,True),
    (28,5,'2021-06-09 10:34:09 AM','B',True,True),
    (49,5,'2021-06-21 10:34:09 AM','D',False,True),
    (19,4,'2021-01-27 10:34:09 AM','A',False,True),
    (25,6,'2021-07-07 10:34:09 AM','D',False,True),
    (46,5,'2021-04-02 10:34:09 AM','C',False,True),
    (19,4,'2021-03-31 10:34:09 AM','A',False,True),
    (28,6,'2021-05-23 10:34:09 AM','C',True,True),
    (13,6,'2021-04-20 10:34:09 AM','D',False,True),
    (25,6,'2021-02-12 10:34:09 AM','A',False,True),
    (46,6,'2021-04-13 10:34:09 AM','C',True,True),
    (31,5,'2021-04-17 10:34:09 AM','B',False,True),
    (43,5,'2021-07-16 10:34:09 AM','B',True,True),
    (10,4,'2021-05-27 10:34:09 AM','D',True,True),
    (25,5,'2021-05-12 10:34:09 AM','D',False,True),
    (28,6,'2021-05-22 10:34:09 AM','A',False,True),
    (31,4,'2021-04-09 10:34:09 AM','A',False,True),
    (4,5,'2021-06-20 10:34:09 AM','A',False,True),
    (13,6,'2021-05-24 10:34:09 AM','D',False,True),
    (34,4,'2021-02-11 10:34:09 AM','A',True,True),
    (34,5,'2021-01-22 10:34:09 AM','D',True,True),
    (1,6,'2021-05-10 10:34:09 AM','D',False,True),
    (31,6,'2021-04-02 10:34:09 AM','C',False,True),
    (34,6,'2021-01-27 10:34:09 AM','C',False,True),
    (19,5,'2021-03-30 10:34:09 AM','D',False,True),
    (4,4,'2021-02-28 10:34:09 AM','D',False,True),
    (19,5,'2021-01-19 10:34:09 AM','A',False,True),
    (4,4,'2021-07-07 10:34:09 AM','A',False,True),
    (37,4,'2021-06-24 10:34:09 AM','B',False,True);