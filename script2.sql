-- table authors
insert into authors (author_id, author_name) values 
	(1, 'Petro'), (2, 'Pavlo'); 
-- table genres
insert into genres (genre_id, genre_name) values 
	(1, 'Comedy'), (2, 'Fantasy'), (3, 'Horror');
-- table books
insert into books (book_id, author_id, genre_id, title, publication_year) values 
	(1,1,1, 'Bad Comedy', '2022'), (2,1,2, 'Mars and Venera', '1985'),
	(3,2,3, 'Horror Story', '1999');
-- table users
insert into users (user_id, username, email) values 
	(1, 'Oksana', 'oksana@company.com'), (2, 'Mariya', 'maria@gmail.com'),
	(3, 'Catrine', 'catrine@company.no');
-- table borrowed_books
insert into borrowed_books (borrow_id,	book_id, user_id, borrow_date, return_date) values 
	(1,1,1, '2025-01-01', '2025-02-01'), (2,2,2, '2025-01-10', '2025-02-08'),
	(3,3,3, '2025-01-20', '2025-02-15'), (4,1,3, '2025-02-03', '2025-03-15'),	
    (5,2,2, '2025-02-15', '2025-05-01'), (6,3,1, '2025-02-25', '2025-05-01');