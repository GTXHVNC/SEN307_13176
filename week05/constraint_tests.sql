USE sen307_VUG_SEN_24_13176;

INSERT INTO Department (dept_name) VALUES (NULL);

INSERT INTO Course (course_code, course_title, credit_units)
VALUES ('TST101', 'Test', 9);

INSERT INTO Student (matric_no, full_name, dept_id)
VALUES ('TEST001', 'Test', 999);

INSERT INTO Student (matric_no, full_name, gender)
VALUES ('TEST002', 'Test', 'X');

INSERT INTO Department (dept_name) VALUES ('Test Department');

INSERT INTO Department (dept_name) VALUES ('Test Department');

DELETE FROM Department WHERE dept_name = 'Test Department';

SELECT COUNT(*) FROM Department;
SELECT COUNT(*) FROM Course;
SELECT COUNT(*) FROM Student;
