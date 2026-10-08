
create database db_library;

use db_library;

create table members (
	id INT PRIMARY KEY identity(1,1),
	first_name NVARCHAR(50) NOT NULL,
	last_name NVARCHAR(50) NOT NULL,
	gender NVARCHAR(10) not null,
	email NVARCHAR(100) UNIQUE NOT NULL,
	phone_number NVARCHAR(15)
); 

create table address (
	id INT PRIMARY KEY identity(1,1),
	description NVARCHAR(100) NOT NULL,
	town NVARCHAR(50) NOT NULL,
	city NVARCHAR(50) NOT NULL,
	country NVARCHAR(50) NOT NULL,
); 

create table books (
	id INT PRIMARY KEY identity(1,1),
	title NVARCHAR(100) NOT NULL,
	author NVARCHAR(100) NOT NULL,
	published_year INT NOT NULL,
	isbn NVARCHAR(20) UNIQUE NOT NULL,
	page_number INT NOT NULL,
);

create table category (
	id INT PRIMARY KEY identity(1,1),
	name NVARCHAR(50) UNIQUE NOT NULL
);

create table author (
	id INT PRIMARY KEY identity(1,1),
	first_name NVARCHAR(50) NOT NULL,
	last_name NVARCHAR(50) NOT NULL,
);

create table library (
	id INT PRIMARY KEY identity(1,1),
	name NVARCHAR(100) NOT NULL,
);

create table book_category (
	id INT PRIMARY KEY identity(1,1),
	book_id INT NOT NULL,
	category_id INT NOT NULL,
);

create table book_author (
	id INT PRIMARY KEY identity(1,1),
	book_id INT NOT NULL,
	author_id INT NOT NULL,
);

create table book_library (
	id INT PRIMARY KEY identity(1,1),
	library_id INT NOT NULL,
	book_id INT NOT NULL,
);

create table loans(
	id INT PRIMARY KEY identity(1,1),
	book_id INT NOT NULL,
	member_id INT NOT NULL,
	library_id INT NOT NULL,
	loan_date DATE NOT NULL,
	return_date DATE NOT NULL,
);