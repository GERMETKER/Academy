
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

CREATE TABLE GroupsCurators(
	id int identity(1,1) PRIMARY KEY not null,
	curatorId int not null,
	groupId int not null,
);


CREATE TABLE GroupLectors(
	id int identity(1,1) PRIMARY KEY not null,
	groupId int not null,
	lectureId int not null,

);

CREATE TABLE Lectors(
	id int identity(1,1) PRIMARY KEY not null,
	lectureRoom nvarchar(max) not null,
	subjectId int not null,
	teacherId int not null,

	constraint  Lectors_lectureRoom_not_empty check (Lectors.lectureRoom not like '/\n\n/g')
);

CREATE TABLE Subjects(
	id int identity(1,1) PRIMARY KEY not null,
	[name] nvarchar(100) unique not null,


);

CREATE TABLE Teachers(
	id int identity(1,1) PRIMARY KEY not null,
	[name] nvarchar(max) not null,
	salary money not null,
	surname nvarchar(max) not null,

	constraint  Teachers_name_not_empty check (Teachers.[name] not like '/\n\n/g'),
	constraint Teachers_salary_not_less_then_0 check (Teachers.salary >= 0),
	constraint  Teachers_surname_not_empty check (Teachers.surname not like '/\n\n/g'),
);