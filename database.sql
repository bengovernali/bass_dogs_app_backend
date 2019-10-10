CREATE TABLE users
(
    id serial primary key,
    first_name varchar(50),
    last_name varchar(50),
    apartment integer,
    phone integer
);

CREATE TABLE dogs
(
    id serial primary key,
    name varchar(50),
    type varchar(50),
    mood varchar(50)
);

CREATE TABLE user_dogs
(
    id serial primary key,
    user_id integer references users(id),
    dog_id integer references dogs(id)
);

CREATE TABLE park
(
    id serial primary key,
    dog_id integer references dogs(id),
    time_in TIME NOT NULL,
    time_out TIME NOT NULL
);

CREATE TABLE sitting
(
    id serial primary key,
    user_id integer references users(id),
    start_date DATE not null,
    end_date DATE not null,
    start_time TIME NOT NULL,
    end_time TIME NOT NULL,
    sitter_id integer references users(id)
);