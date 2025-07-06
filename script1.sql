-- schema
create schema if not exists `LibraryManagement`;
use `LibraryManagement`;
-- table authors
create table if not exists authors (
	author_id int not null auto_increment,
	author_name varchar(255),
	primary key(author_id)
);
-- table genres
create table if not exists genres (
	genre_id int auto_increment,
	genre_name varchar(255),
	primary key(genre_id) 
);
-- table books
create table if not exists books (
	book_id int auto_increment,
	author_id int,
	genre_id int,
	title varchar(255),
	publication_year year,
	primary key (book_id),
	foreign key (author_id) references authors(author_id),
	foreign key (genre_id) references genres(genre_id)
);
-- table users
create table if not exists users (
	user_id int auto_increment,
	username varchar(255),
	email varchar(255),
	primary key (user_id)
);
-- table borrowed_books
create table if not exists borrowed_books (
	borrow_id int auto_increment,
	book_id int,
	user_id int,
	borrow_date date,
	return_date date,
	primary key (borrow_id),
	foreign key (book_id) references books(book_id),
	foreign key (user_id) references users(user_id) 
);