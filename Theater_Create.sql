CREATE TABLE customer (
  customer_id SERIAL PRIMARY KEY,
  full_name VARCHAR(100),
  email VARCHAR(100)
);

CREATE TABLE movies (
  movies_id SERIAL PRIMARY KEY,
  title VARCHAR(100),
  run_time TIME,
  rating VARCHAR(50),
  show_time TIME,
  price NUMERIC(6,2)
);

CREATE TABLE cart (
  cart_id SERIAL PRIMARY KEY,
  customer_id INTEGER,
  total NUMERIC(6,2),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE tickets (
  tickets_id SERIAL PRIMARY KEY,
  quantity INTEGER,
  display_option VARCHAR(50),
  movies_id INTEGER,
  cart_id INTEGER,
  FOREIGN KEY (movies_id) REFERENCES movies(movies_id),
  FOREIGN KEY (cart_id) REFERENCES cart(cart_id)
);

CREATE TABLE concessions (
  concessions_id SERIAL PRIMARY KEY,
  item VARCHAR(50),
  size VARCHAR(50),
  quantity INTEGER,
  price NUMERIC(6,2),
  cart_id INTEGER,
  FOREIGN KEY (cart_id) REFERENCES cart(cart_id)
);

CREATE TABLE billing (
  billing_id SERIAL PRIMARY KEY,
  customer_id INTEGER,
  billing_address VARCHAR(100),
  credit_card_info VARCHAR(50),
  FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);