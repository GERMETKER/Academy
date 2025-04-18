
use Akademy

/*CREATE TABLE Departments(
	id int identity(1,1) PRIMARY KEY not null,
	[name] nvarchar(100) unique not null,
	financing money not null default(0),
	facultyId int not null,

	constraint Departments_financing_not_less_then_0 check (Departments.financing >= 0),
	constraint  Depatment_name_not_empty check (Departments.[name] not like '/\n\n/g'),

	FOREIGN KEY(facultyId) REFERENCES Faculties(id)
);*/

/*CREATE TABLE Curators(
	id int identity(1,1) PRIMARY KEY not null,
	[name] nvarchar(max) not null,
	surname nvarchar(max) not null,

	constraint  Curators_name_not_empty check (Curators.[name] not like '/\n\n/g'),
	constraint  Curators_surname_not_empty check (Curators.surname not like '/\n\n/g'),
);*/

/*CREATE TABLE Faculties(
	id int identity(1,1) PRIMARY KEY not null,
	financing money not null default(0),
	[name] nvarchar(100) unique not null,

	constraint Faculties_financing_not_less_then_0 check (Faculties.financing >= 0),
	constraint  Faculties_name_not_empty check (Faculties.[name] not like '/\n\n/g')
);*/

/*CREATE TABLE Groups(
	id int identity(1,1) PRIMARY KEY not null,
	[name] nvarchar(10) unique not null,
	[year] int not null,
	departmentId int not null,


	constraint Groups_year_in_diapozon_1_to_5 check(Groups.[year] <= 5 and Groups.[year] >= 1),
	FOREIGN KEY(departmentId) REFERENCES Departments(id),
);*/
go
/*CREATE TABLE GroupsCurators(
	id int identity(1,1) PRIMARY KEY not null,
	curatorId int not null,
	groupId int not null,


	FOREIGN KEY(curatorID) REFERENCES Curators(id),
	FOREIGN KEY(groupId) REFERENCES Groups(id)
);*/
go
/*CREATE TABLE GroupLectors(
	id int identity(1,1) PRIMARY KEY not null,
	groupId int not null,
	lectureId int not null,

	FOREIGN KEY(groupId) REFERENCES Groups(id),
	FOREIGN KEY(lectureId) REFERENCES Lectors(id)
);*/
go
/*CREATE TABLE Lectors(
	id int identity(1,1) PRIMARY KEY not null,
	lectureRoom nvarchar(max) not null,
	subjectId int not null,
	teacherId int not null,

	constraint  Lectors_lectureRoom_not_empty check (Lectors.lectureRoom not like '/\n\n/g'),
	FOREIGN KEY(subjectId) REFERENCES Subjects(id),
	FOREIGN KEY(teacherId) REFERENCES Teachers(id)
);*/
go
/*CREATE TABLE Subjects(
	id int identity(1,1) PRIMARY KEY not null,
	[name] nvarchar(100) unique not null,


);*/
go

/*CREATE TABLE Teachers(
	id int identity(1,1) PRIMARY KEY not null,
	[name] nvarchar(max) not null,
	salary money not null,
	surname nvarchar(max) not null,

	constraint  Teachers_name_not_empty check (Teachers.[name] not like '/\n\n/g'),
	constraint Teachers_salary_not_less_then_0 check (Teachers.salary >= 0),
	constraint  Teachers_surname_not_empty check (Teachers.surname not like '/\n\n/g'),
);*/
go 

INSERT INTO Curators ([name], surname)
VALUES
('Evgeniy', 'Onegin'),
('Obi-Van','Kenobi'),
('Albus', 'Dumbledor'),
('Walter', 'White');

/*INSERT INTO Departments(financing, [name], [facultyId])
VALUES
(1000000, 'Programming', 1), (500000, 'Physics', 2), (750900, 'Chemistry', 3);

INSERT INTO Faculties(financing, [name])
VALUES
(10000000, 'IT'), (750000, 'Yadernaya Fizika'), (1000000, 'Varenie Meta');

INSERT INTO Groups([name], [year], [departmentId])
VALUES ('PR-101', 1, 5), ('PH-201', 2, 6), ('VM-301', 3, 7);

INSERT INTO GroupsCurators([curatorId], [groupId])
VALUES (1, 5), (2, 4), (3, 6);*/

INSERT INTO GroupLectors(groupId)


--DELETE FROM Departments WHERE id >= 0;

SELECT * from GroupsCurators
SELECT * from Groups