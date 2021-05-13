SHOW TABLES;
DESCRIBE customers;
DESCRIBE shipments;
ALTER TABLE customers
DROP purchase;
DESCRIBE customers;
#customer_id
DESCRIBE shipments;
#shipment_id
CREATE TABLE orders(
order_id int PRIMARY KEY,
fk_customer_id int NOT NULL,
fk_shipment_id int NOT NULL,
number_of_shipments int NOT NULL,
FOREIGN KEY(fk_customer_id) REFERENCES customers(customer_id),
FOREIGN KEY(fk_shipment_id) REFERENCES shipments(shipment_id));
DESCRIBE orders;
SHOW databases;
INSERT INTO customers (email, date, first_name, last_name)
VALUES ('bfloblk@gmail.com', '2021-05-13', 'Jamil', 'Kelley');
DESCRIBE customers;
INSERT INTO customers (email, date, first_name, last_name)
VALUES ('kkelley383@gmail.com', '2021-05-14', 'Kedrick', 'Kelley');
INSERT INTO customers (email, date, first_name, last_name)
VALUES ('map@icloud.com', '2021-05-22', 'John', 'Brown');
INSERT INTO customers (email, date, first_name, last_name)
VALUES ('cowboys@dallas.com', '2021-05-15', 'Dak', 'Prescott');
INSERT INTO customers (email, date, first_name, last_name)
VALUES ('access@gmail.com', '2021-05-30', 'Troy', 'Aikman');

SELECT * from customers;
SELECT email from customers;
CREATE DATABASE school;
SHOW DATABASES;
USE school;
CREATE TABLE students(
student_id int PRIMARY KEY,
first_name varchar(255) NOT NULL, 
last_name varchar(255) NOT NULL,
Age int NOT NULL);
USE school;
CREATE TABLE classes(
class_id int PRIMARY KEY,
subject_id varchar(255) NOT NULL,
description varchar(255) NOT NULL,
gradelevel int NOT NULL);
USE school;
CREATE TABLE enrollment(
enrollment_id int PRIMARY KEY,
fk_student_id int NOT NULL,
fk_class_id int NOT NULL,
FOREIGN KEY(fk_student_id) REFERENCES students(student_id),
FOREIGN KEY(fk_class_id) REFERENCES classes(class_id));
SHOW DATABASES;
SHOW TABLES;
DESCRIBE students;
DROP TABLE enrollment;
ALTER TABLE students
MODIFY student_id int NOT NULL AUTO_INCREMENT;
CREATE TABLE enrollment(
enrollment_id int PRIMARY KEY,
fk_student_id int NOT NULL,
fk_class_id int NOT NULL,
FOREIGN KEY(fk_student_id) REFERENCES students(student_id),
FOREIGN KEY(fk_class_id) REFERENCES classes(class_id));
DESCRIBE students;
INSERT INTO students (first_name, last_name, age)
VALUES('Kedrick', 'Kelley', '28');
INSERT INTO students (first_name, last_name, age)
VALUES('John', 'Brown', '35');
INSERT INTO students (first_name, last_name, age)
VALUES('Tony', 'Stark', '45');
ALTER TABLE classes
MODIFY class_id int NOT NULL AUTO_INCREMENT;
DESCRIBE students;
DROP TABLE enrollment;
SHOW TABLES;
DROP TABLE enrollment;
ALTER TABLE classes
MODIFY class_id int NOT NULL AUTO_INCREMENT;
CREATE TABLE enrollment(
enrollment_id int PRIMARY KEY,
fk_student_id int NOT NULL,
fk_class_id int NOT NULL,
FOREIGN KEY(fk_student_id) REFERENCES students(student_id),
FOREIGN KEY(fk_class_id) REFERENCES classes(class_id));
INSERT INTO classes (subject_id, description, gradelevel)
VALUES('Bio 255', 'Biology', '11');
INSERT INTO classes (subject_id, description, gradelevel)
VALUES('PHIL 101', 'Philosophy', '11');
INSERT INTO classes (subject_id, description, gradelevel)
VALUES('PE 300', 'Physical Education', '11');
ALTER TABLE enrollment
MODIFY enrollment_id int NOT NULL AUTO_INCREMENT;
INSERT INTO enrollment (fk_student_id, fk_class_id)
VALUES('1','2');
SELECT * FROM students s JOIN classes c ON s.student_id;















