--This is the SQL file for the Project

-- Database Creation
CREATE DATABASE EMIS;

-- Select database for usage
USE EMIS

-- Dropping Database
USE MASTER;
DROP DATABASE EMIS;

-- The creation of tables should be runned from top to bottom to work properly



---------------------------------------------------------------------------------

---------------------------------------------------------------------------------

-- This part is for the users

-- Table for User Type

-- Drop Table
DROP TABLE tblUserType;

-- Create Table
CREATE TABLE tblUserType (
	UserTypeID INT IDENTITY(100,1) PRIMARY KEY,
	UserTypeDescription VARCHAR(50)
);


---------------------------------------------------------------------------------

-- Users Table

-- Drop Table
DROP TABLE tblUSers;

-- Display all table Data
SELECT * FROM tblUsers;

-- Remove all data on the table
TRUNCATE TABLE tblUsers;

-- Create table
CREATE TABLE tblUsers (
	UserID INT UNIQUE IDENTITY(1000000,1),
	Username VARCHAR(50),
	Pwd VARCHAR(64),
	FirstName  varchar(150),
	MiddleName varchar(150),
	LastName varchar(150),
	ContactNumber varchar(150),
	SecurityQuestion varchar(max),
	SecurityAnswer varchar(max),
	UserTypeID int foreign key references tblUserType(UserTypeID),
	IsFirstLogin int
);

---------------------------------------------------------------------------------

-- Stored Procedures for tblUSers

