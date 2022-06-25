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
  c.name AS category_name
FROM lot l
  JOIN category c
    ON l.category_id = c.id
WHERE l.id = 3;

-- Обновляю название лота по его идентификатору;
UPDATE lot
SET title = '2015 Rossignol District Snowboard'
WHERE id = 1;

-- Получить список ставок для лота по его идентификатору с сортировкой по дате
SELECT *
FROM bet
WHERE lot_id = 6
ORDER BY date;
