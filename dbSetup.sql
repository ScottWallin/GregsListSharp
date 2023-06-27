CREATE TABLE
    IF NOT EXISTS accounts(
        id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
        createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
        updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
        name varchar(255) COMMENT 'User Name',
        email varchar(255) COMMENT 'User Email',
        picture varchar(255) COMMENT 'User Picture'
    ) default charset utf8 COMMENT '';

CREATE TABLE
    houses(
        id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
        floors INT DEFAULT 1,
        sqft INT NOT NULL DEFAULT 1,
        price DOUBLE NOT NULL DEFAULT 1.00,
        bathrooms DOUBLE NOT NULL default 1,
        description VARCHAR(500),
        color VARCHAR(100) NOT NULL,
        createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
        updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update'
    ) default charset utf8 COMMENT '';

INSERT INTO
    houses (
        floors,
        sqft,
        price,
        bathrooms,
        description,
        color
    )
VALUES (
        3,
        1400,
        20000,
        2,
        "It's a bit of a fixer upper, but it'll keep you warm at night.",
        "blue"
    );

INSERT INTO
    houses (
        floors,
        sqft,
        price,
        bathrooms,
        description,
        color
    )
VALUES (
        1,
        100000,
        1000000,
        1,
        "I know there's only one bathroom, but you have so much space to frolic!.",
        "white"
    );

INSERT INTO
    houses (
        floors,
        sqft,
        price,
        bathrooms,
        description,
        color
    )
VALUES (
        2,
        3000,
        500000,
        5,
        "We took our inspiration from the Addams Family.",
        "black"
    );

INSERT INTO
    houses (
        floors,
        sqft,
        price,
        bathrooms,
        description,
        color
    )
VALUES (
        5,
        5000,
        550000,
        4.5,
        "Ah look. A house.",
        "Green"
    );

INSERT INTO
    houses (
        floors,
        sqft,
        price,
        bathrooms,
        description,
        color
    )
VALUES (
        1,
        3500,
        350000,
        3,
        "Oh look! Another house I can't afford.",
        "black"
    );

INSERT INTO
    houses (
        floors,
        sqft,
        price,
        bathrooms,
        description,
        color
    )
VALUES (
        1,
        4500,
        450000,
        3,
        "It's not just a house, it's a home. Live, Laugh, Love bish",
        "red"
    );