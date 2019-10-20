CREATE DATABASE StudentData;
USE StudentData;

CREATE TABLE advisors (
  advisor_id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(25) NOT NULL,
  last_name VARCHAR(25) NOT NULL
);

CREATE TABLE majors (
  major_id INT PRIMARY KEY AUTO_INCREMENT,
  major VARCHAR(25) UNIQUE
);

CREATE TABLE classes (
  class_id INT PRIMARY KEY AUTO_INCREMENT,
  class_code VARCHAR(25) NOT NULL
);

CREATE TABLE students (
  student_id INT PRIMARY KEY AUTO_INCREMENT,
  first_name VARCHAR(25) NOT NULL,
  last_name VARCHAR(25) NOT NULL,
  address VARCHAR(60) NOT NULL,
  major_id INT NOT NULL,
  advisor_id INT NOT NULL,
  CONSTRAINT advisor_fk FOREIGN KEY (advisor_id) REFERENCES advisors (advisor_id),
  CONSTRAINT major_fk FOREIGN KEY (major_id) REFERENCES majors (major_id)
);

CREATE TABLE studentXclass (
  studentXclass_id INT PRIMARY KEY AUTO_INCREMENT,
  student_id INT NOT NULL,
  class_id INT Not Null,
  CONSTRAINT student_id_fk FOREIGN KEY (student_id) REFERENCES students (student_id),
  CONSTRAINT class_id_fk FOREIGN KEY (class_id) REFERENCES classes (class_id)
);