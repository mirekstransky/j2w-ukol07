CREATE TABLE post
(
    id IDENTITY,
    slug      VARCHAR(100) NOT NULL UNIQUE,
    author    VARCHAR(100) NOT NULL,
    title     VARCHAR(255) NOT NULL,
    perex     TEXT         NOT NULL,
    body      TEXT         NOT NULL,
    published DATE
);

CREATE
    INDEX ON post(published);

INSERT INTO post (slug, author, title, perex, body, published)
VALUES ('/url', 'Dita Formánková', 'Moje cesta', 'Moje životní cesta', 'Tohle je moje životní cesta kterou vám ukáži',null);