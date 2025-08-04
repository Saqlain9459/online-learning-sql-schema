create database Online_Learning_Platform;
use Online_Learning_Platform;
show databases;

CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    contact VARCHAR(15),
    registration_date DATE
);

desc Students;
CREATE TABLE Instructors(
instructor_id INT PRIMARY KEY auto_increment,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
specialization VARCHAR(100)
);
DESC Instructors;

CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(150) NOT NULL,
    description TEXT,
    category VARCHAR(50),
    instructor_id INT,
    FOREIGN KEY (instructor_id) REFERENCES Instructors(instructor_id)
);

CREATE TABLE Enrollments (
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    progress_percent INT CHECK (progress_percent BETWEEN 0 AND 100),
    status ENUM('enrolled', 'completed', 'dropped'),
    PRIMARY KEY (student_id, course_id),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);


desc Enrollments;

CREATE TABLE Assignments (
    assignment_id INT PRIMARY KEY AUTO_INCREMENT,
    course_id INT,
    title VARCHAR(100),
    due_date DATE,
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

desc Assignments;

CREATE TABLE Submissions (
    student_id INT,
    assignment_id INT,
    submitted_on DATE,
    grade VARCHAR(5),
    feedback TEXT,
    PRIMARY KEY (student_id, assignment_id),
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (assignment_id) REFERENCES Assignments(assignment_id)
);

desc Submissions;


