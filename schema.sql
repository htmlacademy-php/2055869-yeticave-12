CREATE DATABASE IF NOT EXISTS YetiCave
  DEFAULT CHARACTER SET utf8mb4
  DEFAULT COLLATE utf8mb4_unicode_ci;
USE YetiCave;
CREATE TABLE IF NOT EXISTS category (
  id          INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name        VARCHAR(128) UNIQUE NOT NULL
  COMMENT 'название',
  symbol_code VARCHAR(128) UNIQUE NOT NULL
  COMMENT 'символьный код'
);
CREATE TABLE IF NOT EXISTS user (
  id                   INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  date_of_registration DATETIME            NOT NULL
  COMMENT 'дата регистрации пользователя',
  email                VARCHAR(128) UNIQUE NOT NULL
  COMMENT 'email пользователя',
  name                 VARCHAR(128)        NOT NULL
  COMMENT 'имя пользователя',
  password             VARCHAR(128)        NOT NULL
  COMMENT 'пароль пользователя',
  contacts             VARCHAR(128) COMMENT 'контактная информация',
  INDEX `name` (`name`) USING BTREE
);
CREATE TABLE IF NOT EXISTS lot (
  id              INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  date_of_create  DATETIME     NOT NULL
  COMMENT 'дата создания лота',
  title           VARCHAR(128) NOT NULL
  COMMENT 'название лота',
  description     TEXT COMMENT 'описание лота',
  img             VARCHAR(128) COMMENT 'ссылка на изображение лота',
  start_price     DECIMAL(8,2)          NOT NULL
  COMMENT 'стартовая цена лота',
  expiration_date DATE         NOT NULL
  COMMENT 'дата истечения нахождения лота на сайте',
  bet_step        INT          NOT NULL
  COMMENT 'шаг ставки',
  category_id     INT UNSIGNED NOT NULL,
  winner_id       INT UNSIGNED NOT NULL,
  user_id         INT UNSIGNED NOT NULL,
  FOREIGN KEY (user_id) REFERENCES user (id),
  FOREIGN KEY (winner_id) REFERENCES user (id),
  FOREIGN KEY (category_id) REFERENCES category (id)
);
CREATE TABLE IF NOT EXISTS bet (
  id      INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  user_id INT UNSIGNED NOT NULL,
  date    DATETIME     NOT NULL
  COMMENT 'дата и время размещения ставки',
  price   DECIMAL(8,2)          NOT NULL
  COMMENT 'цена, по которой пользователь готов приобрести лот',
  lot_id  INT UNSIGNED NOT NULL,
  FOREIGN KEY (user_id) REFERENCES user (id),
  FOREIGN KEY (lot_id) REFERENCES lot (id)
);
