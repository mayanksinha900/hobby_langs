CREATE TABLE student(
	student_id INT AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    major VARCHAR(20) DEFAULT 'undecided',
    username VARCHAR(30) UNIQUE,
	PRIMARY KEY (student_id)
);
DESCRIBE student;

INSERT INTO student VALUES (1,'Jared','PolySci','jared2354');
INSERT INTO student VALUES (2,'Kate','Sociology','katetied');
INSERT INTO student(student_id, name, username) VALUES (3,'Claire','clairebode348');
INSERT INTO student VALUES (4,'Docm77','Redstone','docm77');
INSERT INTO student VALUES (5,'GeminiTay','Builder','gemisgreat');
INSERT INTO student VALUES (6,'Pearl','Architecture','pearlescentmoon');
INSERT INTO student(student_id, name, username) VALUES (7,'Grain','godgrian');

#Auto-Increament
#INSERT INTO student(name,major,username) VALUES ('Jared','PolySci','jared234');
#INSERT INTO student(name,major,username) VALUES ('Kate','PolySci','kesa234');

SELECT * FROM student;

UPDATE student
SET major = 'Arch'
WHERE student_id = 7;

UPDATE student
SET major = 'Developer'
WHERE major='Builder' or major='undecided';

DELETE FROM student
WHERE major = 'PolySci';
