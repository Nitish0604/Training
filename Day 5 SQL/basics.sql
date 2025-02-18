-- To see all the dbs
show databases;
-- To create a db
create database testdb;
-- To use a db
use testdb;
-- Create tables
CREATE TABLE Student
(
  sid INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(15) NOT NULL,
  address VARCHAR(255) NOT NULL,
  phone VARCHAR(10) NOT NULL,
  PRIMARY KEY (sid),
  UNIQUE (email)
);

CREATE TABLE Course
(
  cid INT NOT NULL,
  name VARCHAR(10) NOT NULL,
  description VARCHAR(255) NOT NULL,
  price FLOAT NOT NULL,
  PRIMARY KEY (cid)
);

CREATE TABLE Enrollment
(
  amount FLOAT NOT NULL,
  date DATE NOT NULL,
  eid INT NOT NULL,
  sid INT NOT NULL,
  cid INT NOT NULL,
  PRIMARY KEY (eid),
  FOREIGN KEY (sid) REFERENCES Student(sid),
  FOREIGN KEY (cid) REFERENCES Course(cid)
);

-- To see all the tables
SHOW TABLES;

CREATE TABLE Book
(
  bookID INT NOT NULL,
  title VARCHAR(255) NOT NULL,
  author VARCHAR(255) NOT NULL,
  PRIMARY KEY (bookID)
);

CREATE TABLE Member
(
  memberID INT NOT NULL,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  PRIMARY KEY (memberID)
);

CREATE TABLE Loan
(
  loanID INT NOT NULL,
  loanDate DATE NOT NULL,
  returnDate DATE NOT NULL,
  memberID INT NOT NULL,
  bookID INT NOT NULL,
  PRIMARY KEY (loanID),
  FOREIGN KEY (memberID) REFERENCES Member(memberID),
  FOREIGN KEY (bookID) REFERENCES Book(bookID)
);