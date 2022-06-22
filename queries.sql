-- Часть 1. Запросы для добавления информации в БД:

-- Заполняю таблицу категорий
INSERT INTO category
SET name = 'Доски и лыжи', symbol_code = 'boards';
INSERT INTO category
SET name = 'Крепления', symbol_code = 'attachment';
INSERT INTO category
SET name = 'Ботинки', symbol_code = 'boots';
INSERT INTO category
SET name = 'Одежда', symbol_code = 'clothing';
INSERT INTO category
SET name = 'Инструменты', symbol_code = 'tools';
INSERT INTO category
SET name = 'Разное', symbol_code = 'other';

-- Заполняю таблицу пользователей
INSERT INTO user
SET name               = 'Костя мер Костюмов',
  email                = 'frak_ot_Boga@mail.ru',
  date_of_registration = '2022-06-15 14:30:15',
  password             = 'solidniy',
  contacts             = '89119111919';

INSERT INTO user
SET name               = 'Бармалей Аллейный',
  email                = 'crooked_street@gmail.com',
  date_of_registration = '2022-06-16 15:50:15',
  password             = 'imKruger',
  contacts             = '89118111818';

-- Заполняю таблицу лотов
INSERT INTO lot
SET title         = '2014 Rossignol District Snowboard',
  description     = 'хороший борд, под пивко',
  date_of_create  = '2022-06-17 14:30:15',
  img             = 'img/lot-1.jpg',
  start_price     = '10999',
  bet_step        = '500',
  expiration_date = '2022-06-20',
  user_id         = 1,
  winner_id       = 2,
  category_id     = 1;

INSERT INTO lot
SET title         = 'DC Ply Mens 2016/2017 Snowboard',
  description     = 'деревяга',
  date_of_create  = '2022-06-18 15:30:15',
  img             = 'img/lot-2.jpg',
  start_price     = '159999',
  bet_step        = '500',
  expiration_date = '2022-07-04',
  user_id         = 2,
  winner_id       = 1,
  category_id     = 1;

INSERT INTO lot
SET title         = 'Крепления Union Contact Pro 2015 года размер L/XL',
  description     = 'хендмейд, стабильность не гарантирую',
  date_of_create  = '2022-06-15 22:30:15',
  img             = 'img/lot-3.jpg',
  start_price     = '8000',
  bet_step        = '500',
  expiration_date = '2022-06-19',
  user_id         = 1,
  winner_id       = 2,
  category_id     = 3;

INSERT INTO lot
SET title         = 'Ботинки для сноуборда DC Mutiny Charocal',
  description     = 'отдаю еще отцовские. Ухаживать гуталином',
  date_of_create  = '2022-06-15 20:30:11',
  img             = 'img/lot-4.jpg',
  start_price     = '10999',
  bet_step        = '500',
  expiration_date = '2022-07-06',
  user_id         = 1,
  winner_id       = 2,
  category_id     = 4;

INSERT INTO lot
SET title         = 'Куртка для сноуборда DC Mutiny Charocal',
  description     = 'от легендарной хулиганской фирмы Мутный Чарокал',
  date_of_create  = '2022-06-14 20:30:11',
  img             = 'img/lot-5.jpg',
  start_price     = '7500',
  bet_step        = '500',
  expiration_date = '2022-07-07',
  user_id         = 2,
  winner_id       = 1,
  category_id     = 5;

INSERT INTO lot
SET title         = 'Маска Oakley Canopy',
  description     = 'маска известного джедая сноуборда Кеноби',
  date_of_create  = '2022-06-14 10:30:11',
  img             = 'img/lot-6.jpg',
  start_price     = '5400',
  bet_step        = '500',
  expiration_date = '2022-07-07',
  user_id         = 2,
  winner_id       = 1,
  category_id     = 7;

-- Заполняю таблицу ставок
INSERT INTO bet
SET date  = '2022-06-14 11:30:11',
  price   = '5900',
  user_id = 1,
  lot_id  = 6;

INSERT INTO bet
SET date  = '2022-06-14 22:30:11',
  price   = '8500',
  user_id = 2,
  lot_id  = 5;


-- Часть 2. Запросы действий:

-- Показать существующий список категорий
SELECT *
FROM category;

-- Показать самые новые, открытые лоты.
-- Каждый лот должен включать название, стартовую цену, ссылку на изображение, цену, название категории;
SELECT
  l.title,
  start_price,
  img,
  b.price,
  c.name
FROM lot l
  JOIN bet b ON l.id = b.lot_id
  JOIN category c ON l.category_id = c.id
WHERE expiration_date > now()
ORDER BY date_of_create ASC;

-- Показать лот по его ID. Получите также название категории, к которой принадлежит лот;
SELECT
  l.title,
  description,
  img,
  start_price,
  expiration_date,
  bet_step,
  c.name,
  c.symbol_code
FROM lot l
  JOIN category c
    ON l.category_id = c.id
WHERE l.id = 3;

-- Обновляю название лота по его идентификатору;
UPDATE lot
SET title = '2015 Rossignol District Snowboard'
WHERE id = 1;

-- Получить список ставок для лота по его идентификатору с сортировкой по дате
SELECT
  b.price,
  date,
  l.title
FROM bet b
  JOIN lot l ON b.lot_id = l.id
WHERE lot_id = 5
ORDER BY date ASC;
