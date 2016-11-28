DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS que;

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  first_name varchar(250) NOT NULL,
  last_name varchar(250) NOT NULL,
  email varchar(250) NOT NULL,
  image varchar(250),
  bio varchar(250),
  location varchar(250) NOT NULL,
  password varchar(250) NOT NULL,
  events varchar(250),
  type varchar(3) NOT NULL,
  upvotes integer,
  downvotes integer
);

CREATE TABLE que (
  id SERIAL PRIMARY KEY,
  title varchar(250) NOT NULL,
  artist varchar(250) NOT NULL,
  img varchar(250) NOT NULL,
  que_id integer REFERENCES users(id)
);