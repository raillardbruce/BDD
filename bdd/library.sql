DROP DATABASE IF EXISTS library;
CREATE DATABASE IF NOT EXISTS library CHARACTER SET utf8 COLLATE utf8_general_ci;

DROP TABLE IF EXISTS library.books;

CREATE TABLE library.books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200),
    author VARCHAR(150),
    genre VARCHAR(75),
    height INT,
    publisher VARCHAR(75)
);

DROP TABLE IF EXISTS library.clients;

CREATE TABLE library.clients (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fname VARCHAR(75),
    lname VARCHAR(75),
    phone INT,
    email VARCHAR(200)
);

DROP TABLE IF EXISTS library.borrow;

CREATE TABLE library.borrow (
    id INT AUTO_INCREMENT PRIMARY KEY,
    checkout DATE,
    checking DATE,
	id_book INT,
    id_client INT,
    statu ENUM('in progress','finish'),
    FOREIGN KEY (id_book) REFERENCES books(id),
    FOREIGN KEY (id_client) REFERENCES clients(id)
);

DROP TABLE IF EXISTS library.reserve;

CREATE TABLE library.reserve (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_book INT,
    id_client INT,
    reservation_date DATE,
    statu ENUM('in progress','finish'),
    FOREIGN KEY (id_book) REFERENCES books(id),
    FOREIGN KEY (id_client) REFERENCES clients(id)
);