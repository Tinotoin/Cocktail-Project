DROP TABLE IF EXISTS cocktails;
DROP TABLE IF EXISTS drinks;
DROP TABLE IF EXISTS mixers;

CREATE TABLE drinks
(
  id SERIAL primary key,
  name VARCHAR(255),
  type VARCHAR(255),
  abv INT
);

CREATE TABLE mixers
(
  id SERIAL primary key,
  name VARCHAR(255),
  type VARCHAR(255)
);

CREATE TABLE cocktails
(
  id SERIAL primary key,
  name VARCHAR(255),
  drink_id INT REFERENCES drinks(id) ON DELETE CASCADE,
  mixer_id INT REFERENCES mixers(id) ON DELETE CASCADE
);
