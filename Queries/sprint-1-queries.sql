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

--Rentals

--Insert Data (5 movies, 5 customers, 10 rentals)

--Queries
--Find all movies by specific customer given their email

--Given a movie title, list all customers who have rented the movie

--Get the rental history for a specific movie title

--For a specific movie dirctor, find the name of the customer, date of rental, title of movie, each time a movie by the director was rented

--List all currently rented out movies (return date not met)