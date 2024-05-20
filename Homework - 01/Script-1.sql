--Homework - 01:
 
--Student table: 
create table student (
 	id INTEGER not null,
 	first_name VARCHAR(100) not null,
 	last_name VARCHAR(100) not null,
 	date_of_birth DATE not null,
 	enrolled_date DATE not null,
 	gender VARCHAR(100) not null,
 	national_id_number INTEGER not null,
 	student_card_number INTEGER not NULL
 );
 
select * from student s;

insert into student(id,first_name,last_name,date_of_birth,enrolled_date,gender,national_id_number,student_card_number)
values
(1,'Bojan', 'Jankov', '2004-09-09', '2024-10-10', 'male', 0001, 1110),
(2, 'Petar', 'Mitev', '2003-08-04', '2024-10-10', 'male', 0002, 1190);

--Course table:
create table course (
	id INTEGER not null,
	name VARCHAR(100) not null,
	credit VARCHAR(100) not null,
	academic_year VARCHAR(100) not null,
	semester VARCHAR(100) not NULL
);
select *from course c;

insert into course (id,name,credit,academic_year,semester)
values
(1,'SQL','7','2023/2024','second'),
(2,'Java Script','9','2023/2024','first');

--Teacher table:
create table teacher (
	id INTEGER not null,
	first_name VARCHAR(100) not null,
	last_name VARCHAR(100) not null,
	date_of_birth DATE not null,
	academic_rank VARCHAR(100) not null,
	hire_date DATE not null
);

select * from teacher t;

insert into teacher (id,first_name,last_name,date_of_birth,academic_rank,hire_date)
values
(1,'Hristina','Bozinoska','1995-12-13','programmer','2024-10-10'),
(2,'Borce','Borisovski','1995-12-15','programmer','2023-09-10');

--Grade table:
create table grade (
	id INTEGER not null,
	student_id INTEGER not null,
	course_id INTEGER not null,
	teacher_id INTEGER not null,
	grade INTEGER not null,
	comment text,
	create_date DATE not NULL
);
 
select * from grade g;

insert into grade(id,student_id,course_id,teacher_id,grade,comment,create_date)
values
(1,2,1,1,10,'Best grade','2024-05-21');

--Grade details table:

create table gradeDetails (
	id INTEGER not null,
	grade_id INTEGER not null,
	achievement_type_id INTEGER not null,
	achievement_points INTEGER not null,
	achievement_max_points INTEGER not null,
	achievement_date DATE not NULL
);
select * from gradedetails g ;

insert into gradedetails (id,grade_id,achievement_type_id,achievement_points,achievement_max_points,achievement_date)
values
(1,1,2,9,10,'2024-10-10');

--Achievement type table:
create table achievementType ( 
	id INTEGER not null,
	name VARCHAR(100) not null,
	description text not null,
	participation_rate INTEGER not NULL
);
select * from achievementtype a ;

insert into achievementtype (id,name,description,participation_rate)
values
(1,'Full-stack','Best ever',10);












