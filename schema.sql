CREATE DATABASE IF NOT EXISTS YetiCave
    DEFAULT CHARACTER SET utf8mb4
    DEFAULT COLLATE utf8mb4_unicode_ci;
USE YetiCave;
CREATE TABLE IF NOT EXISTS category (
    id INT PRIMARY KEY,
    name VARCHAR(128) UNIQUE NOT NULL,
    symbol_code VARCHAR(128) UNIQUE NOT NULL
);
CREATE TABLE IF NOT EXISTS user (
    id INT PRIMARY KEY,
    date_of_registration DATETIME(6) NOT NULL,
    email VARCHAR(128) UNIQUE NOT NULL,
    name VARCHAR(128) NOT NULL,
    password VARCHAR(128) NOT NULL,
    contacts VARCHAR(128)
);
CREATE TABLE IF NOT EXISTS lot (
    id INT PRIMARY KEY,
    date_of_create DATETIME(6) NOT NULL,
    title VARCHAR(128) NOT NULL,
    description TEXT,
    img VARCHAR(128),
    start_price INT NOT NULL,
    expiration_date DATE NOT NULL,
    bet_step INT NOT NULL,
    category_id INT NOT NULL,
    winner_id INT,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(id),
    FOREIGN KEY (winner_id) REFERENCES user(id),
    FOREIGN KEY (category_id) REFERENCES category(id)
);
CREATE TABLE IF NOT EXISTS bet (
    id INT PRIMARY KEY,
    user_id INT NOT NULL,
    date DATETIME(6) NOT NULL,
    price INT NOT NULL,
    lot_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES user(id),
    FOREIGN KEY (lot_id) REFERENCES lot(id)
);