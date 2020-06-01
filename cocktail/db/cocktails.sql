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
