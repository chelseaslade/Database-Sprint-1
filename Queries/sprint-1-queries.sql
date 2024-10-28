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
('Barbie', 'Comedy', 'Greta Gerwig'),
('Top Gun: Maverick', 'Action', 'Joseph Kosinski'),
('Nope', 'Horror', 'Jordan Peele'),
('Parasite', 'Thriller', 'Bong Joon-ho'),
('The Martian', 'Drama', 'Ridley Scott');

INSERT INTO customers (first_name, last_name, email, phone_num)
VALUES
('Chelsea', 'Slade', 'chelseaslade@email.com', '555-435-2342'),
('Noah', 'Slade', 'noahslade@email.com', '555-532-5353'),
('Pip', 'Cat', 'pippycat@badcat.com', '555-340-2341'),
('Suki', 'Dog', 'sukidog@stinkydog.com', '555-241-4252'),
('Bif', 'Cat', 'bifthecat@goodcat.com', '555-242-5632');

INSERT INTO rentals (customer_id, rental_id, rental_date, return_date)
VALUES
(),
(),
(),
(),
(),
(),
(),
(),
(),
();

--Queries
--Find all movies by specific customer given their email

--Given a movie title, list all customers who have rented the movie

--Get the rental history for a specific movie title

--For a specific movie dirctor, find the name of the customer, date of rental, title of movie, each time a movie by the director was rented

--List all currently rented out movies (return date not met)