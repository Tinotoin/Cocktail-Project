DROP TABLE IF EXISTS drinks;


CREATE TABLE drinks
(
  id SERIAL primary key,
  name VARCHAR(255),
  type VARCHAR(255),
  abv INT
);
