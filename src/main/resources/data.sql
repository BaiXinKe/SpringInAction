CREATE TABLE IF NOT EXISTS Taco_Order (
    id identity,
    delivery_Name varchar(50) NOT NULL,
    delivery_Street varchar(50) NOT NULL,
    delivery_City varchar(50) not null,
    delivery_State varchar(2) not null,
    delivery_Zip varchar(10) not null,
    cc_number varchar(16) not null,
    cc_expiration varchar(5) not null,
    cc_cvv varchar(3) not null,
    placed_at timestamp not null
);

CREATE TABLE IF NOT EXISTS Taco (
    id identity,
    name varchar(50) NOT NULL,
    taco_order BIGINT NOT NULL,
    taco_order_key BIGINT NOT NULL,
    created_at timestamp NOT NULL,
);

CREATE TABLE IF NOT EXISTS Ingredient_Ref (
    ingredient VARCHAR(4) NOT NULL,
    taco BIGINT NOT NULL,
    taco_key BIGINT NOT NULL,
);

CREATE TABLE IF NOT EXISTS Ingredient (
    id VARCHAR(4) NOT NULL,
    name VARCHAR(25) NOT NULL,
    type VARCHAR(10) NOT NULL,
);

ALTER TABLE
    Taco
ADD
    FOREIGN KEY (taco_order) references Taco_Order(id);

ALTER TABLE
    Ingredient_Ref
ADD
    FOREIGN KEY (ingredient) references Ingredient(id);

-- Insert Data
DELETE FROM
    Ingredient_Ref;

DELETE FROM
    Taco;

DELETE FROM
    Taco_Order;

DELETE FROM
    Ingredient;

insert into
    Ingredient (id, name, type)
values
    ('FLTO', 'Flour Tortilla', 'WRAP');

insert into
    Ingredient (id, name, type)
values
    ('COTO', 'Corn Tortilla', 'WRAP');

insert into
    Ingredient (id, name, type)
values
    ('GRBF', 'Ground Beef', 'PROTEIN');

insert into
    Ingredient (id, name, type)
values
    ('CARN', 'Carnitas', 'PROTEIN');

insert into
    Ingredient (id, name, type)
values
    ('TMTO', 'Diced Tomatoes', 'VEGGIES');

insert into
    Ingredient (id, name, type)
values
    ('LETC', 'Lettuce', 'VEGGIES');

insert into
    Ingredient (id, name, type)
values
    ('CHED', 'Cheddar', 'CHEESE');

insert into
    Ingredient (id, name, type)
values
    ('JACK', 'Monterrey Jack', 'CHEESE');

insert into
    Ingredient (id, name, type)
values
    ('SLSA', 'Salsa', 'SAUCE');

insert into
    Ingredient (id, name, type)
values
    ('SRCR', 'Sour Cream', 'SAUCE');