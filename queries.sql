-- create database biblioteka;
-- use database biblioteka;

-- alter database biblioteka default character set utf8 collate utf8_polish_ci; 

-- create table genre (
--     id int(4) primary key AUTO_INCREMENT,
--     name varchar(255)
-- );
-- create table publisher (
--     id int(4) primary key auto_increment,
--     name varchar(50)
-- );
-- create table author (
--     id int(4) primary key auto_increment,
--     name varchar(50),
--     surname varchar(50),
--     birth_year varchar (4)
-- );
-- create table book (
--     id int(4) primary key auto_increment,
--     title varchar(255),
--     issue_date date,
--     author_id int(4),
--     publisher_id int(4),
--     foreign key (publisher_id) references publisher (id)  
-- );
-- create table book_to_genres (
--     id int(4) primary key auto_increment,
--     genre_id int(4),
--     book_id int(4),
--     constraint fk_genre foreign key (genre_id) references genre (id),
--     constraint fk_book foreign key (book_id) references book (id)
-- );
-- create table borrow_to_book (
--     id int(4) primary key auto_increment,
--     borrow_id int(4),
--     book_id int(4),
--     foreign key (borrow_id) references borrow (id),
--     foreign key (book_id) references book (id)
-- );
-- insert into borrow_to_book (id, borrow_id, book_id) 
-- select null, 1, 1;

-- insert into borrow_to_book (id, borrow_id, book_id) 
-- select null, 11, 1;
-- insert into borrow_to_book (id, borrow_id, book_id) 
-- select null, 12, 1;
-- insert into borrow_to_book (id, borrow_id, book_id) 
-- select null, 13, 1;
-- insert into borrow_to_book (id, borrow_id, book_id) 
-- select null, 14, 1;
-- insert into borrow_to_book (id, borrow_id, book_id) 
-- select null, 15, 1;
-- insert into borrow_to_book (id, borrow_id, book_id) 
-- select null, 16, 4;
-- insert into borrow_to_book (id, borrow_id, book_id) 
-- select null, 17, 4;
-- insert into borrow_to_book (id, borrow_id, book_id) 
-- select null, 18, 5;
-- insert into borrow_to_book (id, borrow_id, book_id) 
-- select null, 19, 5;
-- insert into borrow_to_book (id, borrow_id, book_id) 
-- select null, 20, 5;

-- create table status (
--     id int(4) primary key auto_increment,
--     name varchar(50)
-- );
-- create table class (
--     id int(4) primary key auto_increment,
--     name varchar(5)
-- );
-- create table voivodeship (
--     id int(4) primary key auto_increment,
--     name varchar(18)
-- );
-- create table city (
--     id int(4) primary key auto_increment,
--     name varchar(50),
--     voivodeship_id int (4),
--     constraint fk_voivodeship foreign key (voivodeship_id) references voivodeship (id)
-- );
-- create table staff (
--     id int(4) primary key auto_increment,
--     name varchar(50),
--     surname varchar(50),
--     status_id int(4),
--     city_id int(4),
--     constraint fk_status foreign key (status_id) references status (id),
--     constraint fk_city foreign key (city_id) references city (id)
-- );
-- create table student (
--     id int(4) primary key auto_increment,
--     name varchar(50),
--     surname varchar(50),
--     birthdate date,
--     class_id int(4),
--     city_id int(4),
--     constraint fk_class foreign key (class_id) references class (id),
--     constraint fk_student_city foreign key (city_id) references city (id)
-- );
-- create table borrow (
--     id int(4) primary key auto_increment,
--     pesel varchar(11),
--     taken_date date,
--     brought_date date,
--     student_id int(4),
--     book_id int(4),
--     staff_id int(4),
--     constraint fk_borrow_student foreign key (student_id) references student (id),
--     constraint fk_borrow_book foreign key (book_id) references book (id),
--     constraint fk_borrow_staff foreign key (staff_id) references staff (id)
-- );



-- insert into author values(null, "William", "Shakespeare", "1564");
-- insert into author values(null, "Jaoanne Kathleen", "Rowling", "1965");

-- insert into publisher values(null, "Helion");
-- insert into publisher values(null, "Czarna Owca");



-- insert into book (id, title, issue_date, author_id, publisher_id)
-- select NULL, "Makbet", "2021", author.id, publisher.id 
-- from author, publisher
-- where author.surname = "Shakespeare" and publisher.name = "Helion";

-- select id as publisher_id from publisher where publisher.name = "Czarna Owca";
-- insert into book (id, title, issue_date, author_id, publisher_id)
-- select NULL, "Makbet", "2021", author.id, publisher.id 
-- from author, publisher
-- where author.surname = "Shakespeare" and publisher.name = "Czarna Owca";

-- insert into book (id, title, issue_date, author_id, publisher_id)
-- select null, "Romeo i Julia", 2021, author.id, publisher.id
-- from author, publisher
-- where author.surname = "Shakespeare" and publisher.name = "Helion";

-- insert into book (id, title, issue_date, author_id, publisher_id)
-- select null, "Harry Potter i Insygnia Śmierci", 2021, author.id, publisher.id
-- from author, publisher
-- where author.surname = "Rowling" and publisher.name = "Czarna Owca";



-- insert into genre (id, name)
-- select null, "tragedia";

-- insert into genre (id, name)
-- select null, "dramat";

-- insert into genre (id, name)
-- select null, "fantasy";

-- insert into genre (id, name)
-- select null, "powieść przygodowa";

-- insert into genre (id, name)
-- select null, "powieść młodzieżowa";

-- insert into genre (id, name)
-- select null, "dreszczowiec";



-- insert into book_to_genres (id, genre_id, book_id)
-- select null, genre.id, book.id
-- from genre, book
-- where genre.name = "fantasy" and book.title = "Harry Potter i Insygnia Śmierci"; 

-- insert into book_to_genres (id, genre_id, book_id)
-- select null, genre.id, book.id
-- from genre, book
-- where genre.name = "powieść przygodowa" and book.title = "Harry Potter i Insygnia Śmierci";

-- insert into book_to_genres (id, genre_id, book_id)
-- select null, genre.id, book.id
-- from genre, book
-- where genre.name = "dreszczowiec" and book.title = "Harry Potter i Insygnia Śmierci"; 

-- insert into book_to_genres (id, genre_id, book_id)
-- select null, genre.id, book.id
-- from genre, book
-- where genre.name = "dramat" and book.title = "Makbet";

-- insert into book_to_genres (id, genre_id, book_id)
-- select null, genre.id, book.id
-- from genre, book
-- where genre.name = "tragedia" and book.title = "Romeo i Julia"; 



-- insert into status (id, name)
-- select null, "Asystent";

-- insert into status (id, name)
-- select null, "Bibliotekarz";




-- insert into voivodeship (id, name)
-- select null, "małopolskie";

-- insert into voivodeship (id, name)
-- select null, "pomorskie";

-- insert into voivodeship (id, name)
-- select null, "mazowieckie";



-- insert into city (id, name, voivodeship_id)
-- select null, "Kraków", voivodeship.id
-- from voivodeship
-- where voivodeship.name = "małopolskie";

-- insert into city (id, name, voivodeship_id)
-- select null, "Warszawa", voivodeship.id
-- from voivodeship
-- where voivodeship.name = "mazowieckie";

-- insert into city (id, name, voivodeship_id)
-- select null, "Gdańsk", voivodeship.id
-- from voivodeship
-- where voivodeship.name = "pomorskie";



-- insert into class (id, name) 
-- select null, "4gta1";

-- insert into class (id, name) 
-- select null, "4gta2";



-- insert into student (id, name, surname, birthdate, city_id, class_id, pesel)
-- select null, "Szymon", "Sposób", "2000-01-08", city.id, class.id, "66666666666"
-- from city, class
-- where city.name = "Kraków" and class.name="4gta2";

-- insert into student (id, name, surname, birthdate, city_id, class_id, pesel)
-- select null, "Kacper", "Młynarczyk", "2000-01-01", city.id, class.id, "11111111111"
-- from city, class
-- where city.name = "Warszawa" and class.name="4gta1";

-- insert into student (id, name, surname, birthdate, city_id, class_id, pesel)
-- select null, "Mateusz", "Ogniewski", "2000-04-01", city.id, class.id, "22222222222"
-- from city, class
-- where city.name = "Kraków" and class.name="4gta1";

-- insert into student (id, name, surname, birthdate, city_id, class_id, pesel)
-- select null, "Jakub", "Rawski", "2000-05-01", city.id, class.id, "33333333333"
-- from city, class
-- where city.name = "Kraków" and class.name="4gta2";

-- insert into student (id, name, surname, birthdate, city_id, class_id, pesel)
-- select null, "Bartosz", "Pasternak", "2000-06-01", city.id, class.id, "44444444444"
-- from city, class
-- where city.name = "Kraków" and class.name="4gta2";

-- insert into student (id, name, surname, birthdate, city_id, class_id, pesel)
-- select null, "Mateusz", "Skorek", "2000-07-01", city.id, class.id, "55555555555"
-- from city, class
-- where city.name = "Kraków" and class.name="4gta2";

-- insert into student (id, name, surname, birthdate, city_id, class_id, pesel)
-- select null, "Kuba", "Stepnowski", "2000-10-01", city.id, class.id, "00000000000"
-- from city, class
-- where city.name = "Kraków" and class.name="4gta2";

-- insert into student (id, name, surname, birthdate, city_id, class_id, pesel)
-- select null, "Kuba", "Stepnowski", "2000-10-01", city.id, class.id, "77777777777"
-- from city, class
-- where city.name = "Kraków" and class.name="4gta2";

-- insert into student (id, name, surname, birthdate, city_id, class_id, pesel)
-- select null, "Szymon", "Synaszko", "2000-12-01", city.id, class.id, "88888888888"
-- from city, class
-- where city.name = "Gdańsk" and class.name="4gta2";

-- insert into student (id, name, surname, birthdate, city_id, class_id, pesel)
-- select null, "Szymon", "Synaszko", "2000-12-01", city.id, class.id, "99999999999"
-- from city, class
-- where city.name = "Gdańsk" and class.name="4gta2";

-- insert into student (id, name, surname, birthdate, city_id, class_id, pesel)
-- select null, "Maciej", "Tracz", "2000-01-14", city.id, class.id, "00000111111"
-- from city, class
-- where city.name = "Warszawa" and class.name="4gta2";

-- insert into student (id, name, surname, birthdate, city_id, class_id, pesel)
-- select null, "Maciej", "Tracz", "2000-01-14", city.id, class.id, "11111000000"
-- from city, class
-- where city.name = "Warszawa" and class.name="4gta2";


-- insert into staff (id, name, surname, status_id, city_id)
-- select null, "Kacper", "Tyszka", status.id, city.id
-- from status, city
-- where status.name = "Asystent" and city.name = "Kraków";

-- insert into staff (id, name, surname, status_id, city_id)
-- select null, "Waldermar", "Zdybel", status.id, city.id
-- from status, city
-- where status.name = "Bibliotekarz" and city.name = "Warszawa";

-- insert into staff (id, name, surname, status_id, city_id)
-- select null, "Gabriela", "Zubkowicz", status.id, city.id
-- from status, city
-- where status.name = "Bibliotekarz" and city.name = "Gdańsk";



-- insert into borrow (id, taken_date, brought_date, student_id, book_id, staff_id)
-- select null, "2021-03-05", "2022-09-03", student.id, book.id, staff.id
-- from student, book, staff, publisher
-- where student.surname = "Ogniewski" and book.title = "Makbet" and publisher.name = "Helion" and staff.surname = "Tyszka";

-- insert into borrow (id, taken_date, brought_date, student_id, book_id, staff_id)
-- select null, "2021-03-06", null, student.id, book.id, staff.id
-- from student, staff, book inner join publisher on book.publisher_id = publisher.id 
-- where student.surname = "Rawski" and book.title = "Makbet" and publisher.name = "Helion" and staff.surname = "Zdybel";

-- insert into borrow (id, taken_date, brought_date, student_id, book_id, staff_id)
-- select null, "2021-03-07", null, student.id, book.id, staff.id
-- from student, staff, book inner join publisher on book.publisher_id = publisher.id 
-- where student.surname = "Pasternak" and book.title = "Makbet" and publisher.name = "Helion" and staff.surname = "Zubkowicz";

-- insert into borrow (id, taken_date, brought_date, student_id, book_id, staff_id)
-- select null, "2021-03-08", null, student.id, book.id, staff.id
-- from student, staff, book inner join publisher on book.publisher_id = publisher.id 
-- where student.surname = "Skorek" and book.title = "Makbet" and publisher.name = "Helion" and staff.surname = "Tyszka";

-- insert into borrow (id, taken_date, brought_date, student_id, book_id, staff_id)
-- select null, "2021-03-09", null, student.id, book.id, staff.id
-- from student, staff, book inner join publisher on book.publisher_id = publisher.id 
-- where student.surname = "Sposób" and book.title = "Makbet" and publisher.name = "Helion" and staff.surname = "Zdybel";

-- insert into borrow (id, taken_date, brought_date, student_id, book_id, staff_id)
-- select null, "2021-03-09", null, student.id, book.id, staff.id
-- from student, staff, book inner join publisher on book.publisher_id = publisher.id 
-- where student.pesel = "00000000000" and book.title = "Makbet" and publisher.name = "Helion" and staff.surname = "Zubkowicz";

-- insert into borrow (id, taken_date, brought_date, student_id, book_id, staff_id)
-- select null, "2021-03-09", null, student.id, book.id, staff.id
-- from student, staff, book inner join publisher on book.publisher_id = publisher.id 
-- where student.pesel = "77777777777" and book.title = "Romeo i Julia" and publisher.name = "Helion" and staff.surname = "Tyszka";

-- insert into borrow (id, taken_date, brought_date, student_id, book_id, staff_id)
-- select null, "2021-03-09", null, student.id, book.id, staff.id
-- from student, staff, book inner join publisher on book.publisher_id = publisher.id 
-- where student.pesel = "88888888888" and book.title = "Romeo i Julia" and publisher.name = "Helion" and staff.surname = "Zdybel";

-- insert into borrow (id, taken_date, brought_date, student_id, book_id, staff_id)
-- select null, "2021-08-07", "2021-08-07", student.id, book.id, staff.id
-- from student, staff, book inner join publisher on book.publisher_id = publisher.id 
-- where student.pesel = "99999999999" and book.title = "Harry Potter i Insygnia Śmierci" and publisher.name = "Czarna Owca" and staff.surname = "Zubkowicz";

-- insert into borrow (id, taken_date, brought_date, student_id, book_id, staff_id)
-- select null, "2021-08-07", "2021-08-07", student.id, book.id, staff.id
-- from student, staff, book inner join publisher on book.publisher_id = publisher.id 
-- where student.pesel = "00000111111" and book.title = "Harry Potter i Insygnia Śmierci" and publisher.name = "Czarna Owca" and staff.surname = "Tyszka";

-- insert into borrow (id, taken_date, brought_date, student_id, book_id, staff_id)
-- select null, "2021-09-07", "2021-11-07", student.id, book.id, staff.id
-- from student, staff, book inner join publisher on book.publisher_id = publisher.id 
-- where student.pesel = "11111000000" and book.title = "Harry Potter i Insygnia Śmierci" and publisher.name = "Czarna Owca" and staff.surname = "Zdybel";


-- -- START OF FINAL QUERY
-- select
-- student.pesel as PESEL,
-- class.name as class,
-- concat(student.surname, " ", student.name) as student,
-- student.birthdate as birth,
-- concat(student_city.name, ", ", student_voivodeship.name) as city,
-- book.title as book,
-- publisher.name as publisher,
-- concat(staff.surname, " ", staff.name) as staff,
-- book.issue_date as issue_date,
-- status.name as staff_status,
-- concat(staff_city.name, ", ", staff_voivodeship.name) as staff_city,
-- concat(author.name, " ", author.surname) as author,
-- author.birth_year as author_birth,
-- borrow.taken_date as taken_date,
-- borrow.brought_date as brought_date,
-- genre.genres as book_type
-- from (
--     -- core (this is an example of FULL OUTER JOIN in MySQL)
--     SELECT student.id as student_id, borrow.id as borrow_id, book.title, book.id as book_id FROM student
--     LEFT JOIN borrow ON student.id = borrow.student_id
--     LEFT JOIN book ON borrow.book_id = book.id
--     UNION
--     SELECT student.id as student_id, borrow.id as borrow_id, book.title, book.id as book_id FROM student
--     RIGHT JOIN borrow ON student.id = borrow.student_id
--     LEFT JOIN book ON borrow.book_id = book.id
--     UNION
--     SELECT student.id as student_id, borrow.id as borrow_id, book.title, book.id as book_id FROM student
--     RIGHT JOIN borrow ON student.id = borrow.student_id
--     RIGHT JOIN book ON borrow.book_id = book.id
-- ) as core
-- left join student on core.student_id = student.id
-- left join class on student.class_id = class.id
-- left join city as student_city on student.city_id = student_city.id 
-- left join voivodeship as student_voivodeship on student_city.voivodeship_id = student_voivodeship.id 

-- left join book on core.book_id = book.id
-- left join publisher on book.publisher_id = publisher.id
-- left join author on book.author_id = author.id

-- left join borrow on core.borrow_id = borrow.id
-- left join staff on borrow.staff_id = staff.id
-- left join city as staff_city on staff.city_id = staff_city.id
-- left join voivodeship as staff_voivodeship on staff_city.voivodeship_id = staff_voivodeship.id
-- left join status on staff.status_id = status.id
-- left join (
--     select 
--         book.id,
--         group_concat(genre.name separator ", ") as genres
--     from book
--     left join book_to_genres on book.id = book_to_genres.book_id
--     left join genre on book_to_genres.genre_id = genre.id
--     group by book.id
-- ) as genre on book.id = genre.id
-- ;
-- -- END OF FINAL QUERY

-- -- -- START OF GENRE QUERY
-- -- -- select 
-- -- --     book.id,
-- -- --     book.title,
-- -- --     group_concat(genre.name separator ", ") as genres
-- -- -- from book
-- -- -- left join book_to_genres on book.id = book_to_genres.book_id
-- -- -- left join genre on book_to_genres.genre_id = genre.id
-- -- -- group by book.id
-- -- -- ;
-- -- -- END OF GENRE QUERY


-- FINAL QUERY
-- t1 = student, t2 = borrow, t3 = book


