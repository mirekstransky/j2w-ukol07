CREATE TABLE author
(
    id      INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name    VARCHAR(100) NOT NULL
);


CREATE TABLE post
(
    id        INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    slug      VARCHAR(100) NOT NULL UNIQUE,
    author_id INTEGER      NOT NULL,
    title     VARCHAR(255) NOT NULL,
    perex     TEXT         NOT NULL,
    body      TEXT         NOT NULL,
    published DATE,
    FOREIGN KEY (author_id) REFERENCES author (id)
);


CREATE INDEX ON post(published);