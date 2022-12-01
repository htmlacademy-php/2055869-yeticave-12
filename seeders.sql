-- Часть 1. Запросы для добавления информации в БД:

-- Заполняю таблицу категорий
INSERT INTO category (name, symbol_code)
VALUES ('Доски и лыжи', 'boards'), ('Крепления', 'attachment'), ('Ботинки', 'boots'), ('Одежда', 'clothing'),
  ('Инструменты', 'tools'), ('Разное', 'other');

-- Заполняю таблицу пользователей
INSERT INTO user (date_of_registration, email, name, password, contacts)
VALUES ('2022-06-15 14:30:15', 'frak_ot_Boga@mail.ru', 'Костя мер Костюмов', 'solidniy', '89119111919'),
  ('2022-06-16 15:50:15', 'crooked_street@gmail.com', 'Бармалей Аллейный', 'imKruger', '89118111818');

-- Заполняю таблицу лотов
INSERT INTO lot
(date_of_create, title, description, img, start_price, expiration_date, bet_step, category_id, winner_id, user_id)
VALUES ('2022-11-27 20:30:11', '2014 Rossignol District Snowboard', 'хороший борд, под пивко', 'img/lot-1.jpg',
        '10999', '2022-12-10', '500', 1, 2, 1),
  ('2022-11-29 15:30:15', 'DC Ply Mens 2016/2017 Snowboard', 'деревяга', 'img/lot-2.jpg', '159999', '2022-12-12', '500',
   1, 1, 2),
  ('2022-11-28 22:30:15', 'Крепления Union Contact Pro 2015 года размер L/XL', 'хендмейд, стабильность не гарантирую',
   'img/lot-3.jpg', '8000', '2022-12-11', '500', 2, 2, 1),
  ('2022-11-30 14:30:15', 'Ботинки для сноуборда DC Mutiny Charocal', 'отдаю еще отцовские. Ухаживать гуталином',
   'img/lot-4.jpg', '10999', '2022-12-13', '500', 3, 1, 2),
  ('2022-11-01 20:30:11', 'Куртка для сноуборда DC Mutiny Charocal', 'от легендарной хулиганской фирмы Мутный Чарокал',
   'img/lot-5.jpg', '7500', '2022-11-14', '500', 4, 2, 1),
  ('2022-11-26 10:30:11', 'Маска Oakley Canopy', 'маска известного джедая сноуборда Кеноби', 'img/lot-6.jpg', '5400',
   '2022-12-09', '500', 6, 1, 2);

-- Заполняю таблицу ставок
INSERT INTO bet (user_id, date, price, lot_id)
VALUES (2, '2022-11-14 11:30:11', '5900', 6), (1, '2022-11-15 20:30:11', '6400', 6);
