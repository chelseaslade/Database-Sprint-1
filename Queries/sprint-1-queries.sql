--Sprint 1: Databases
--Author: Chelsea Slaade (Mayne)
--Due: November 3rd, 2024

--Create Tables
--Movies
CREATE TABLE movies (
    id serial NOT NULL PRIMARY KEY,
    title varchar(100),
    genre varchar(100),
    director varchar(100)
);

--Customers
CREATE TABLE customers (
    id serial NOT NULL PRIMARY KEY,
    first_name varchar(100),
    last_name varchar(100),
    email varchar(200),
    phone_num varchar(15)
);

--Rentals
CREATE TABLE rentals (
    customer_id int,
    movie_id int,
    rental_date DATE,
    return_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(id),
    FOREIGN KEY (movie_id) REFERENCES movies(id),
    PRIMARY KEY (customer_id, movie_id)
);

--Insert Data (5 movies, 5 customers, 10 rentals)
INSERT INTO movies (title, genre, director)
VALUES
('Barbie', 'Comedy', 'Greta Gerwig'), --1
('Top Gun: Maverick', 'Action', 'Joseph Kosinski'), --2
('Nope', 'Horror', 'Jordan Peele'), --3
('Parasite', 'Thriller', 'Bong Joon-ho'), --4
('The Martian', 'Drama', 'Ridley Scott'); --5

INSERT INTO customers (first_name, last_name, email, phone_num)
VALUES
('Chelsea', 'Slade', 'chelseaslade@email.com', '555-435-2342'), --1
('Noah', 'Slade', 'noahslade@email.com', '555-532-5353'), --2
('Pip', 'Cat', 'pippycat@badcat.com', '555-340-2341'), --3
('Suki', 'Dog', 'sukidog@stinkydog.com', '555-241-4252'), --4
('Bif', 'Cat', 'bifthecat@goodcat.com', '555-242-5632'); --5

INSERT INTO rentals (customer_id, rental_id, rental_date, return_date)
VALUES
(1, 2, '2024-10-22', '2024-11-04'),
(2, 4, '2024-09-10', '2024-09-30'),
(1, 1, '2024-04-24', '2024-05-01'),
(3, 1, '2024-09-15', '2024-09-25'),
(4, 2, '2024-06-10', '2024-06-20'),
(5, 3, '2024-07-12', '2024-07-22'),
(2, 3, '2024-10-26', '2024-11-06'),
(3, 5, '2024-10-28', '2024-11-10'),
(4, 1, '2024-09-15', '2024-09-26'),
(5, 5, '2024-10-13', '2024-11-03');

--Queries
--Find all movies by specific customer given their email

--Given a movie title, list all customers who have rented the movie

--Get the rental history for a specific movie title

--For a specific movie dirctor, find the name of the customer, date of rental, title of movie, each time a movie by the director was rented

--List all currently rented out movies (return date not met)