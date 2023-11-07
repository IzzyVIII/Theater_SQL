INSERT INTO customer (
	full_name,
	email
) VALUES (
	'Allie Bear Burk',
	'alliebb@gmail.com'
);

SELECT *
FROM customer;

INSERT INTO movies (
	title,
	run_time,
	rating,
	show_time,
	price
) VALUES (
	'Dogs are Better than Cats!',
	'2h:00m',
	'PG-M(Dogs)',
	'20:00hrs',
	8.00
);

SELECT *
FROM movies;

INSERT INTO cart (
	customer_id,
	total
) VAlUES (
	1,
	24.00
);

SELECT *
FROM movies;

INSERT INTO tickets (
	quantity,
	display_option,
	movies_id,
	cart_id
) VALUES (
	3,
	'Mobile',
	123,
	1
);

SELECT *
FROM tickets

INSERT INTO concessions (
	item,
	size,
	quantity,
	price,
	cart_id
) VALUES (
	'Nachos',
	'Medium',
	3,
	7,
	cart_id
);

SELECT *
FROM concessions

INSERT INTO billing (
	customer_id,
	billing_address,
	credit_card_info
) VALUES (
	1,
	'888 N. Good Dog Ave.',
	'8888 4444 8888 4444'
);

SELECT *
FROM billing