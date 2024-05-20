DROP TABLE IF EXISTS countries, roles, taxes, offers, discounts, payments, customers, invoice_status, products, product_customers, invoices, orders CASCADE;

CREATE TABLE countries (
    id serial primary key,
    name varchar(50) not null
);

CREATE TABLE roles (
    id serial primary key,
    name varchar(50) not null,
    description text,
    actions text
);

CREATE TABLE taxes (
    id serial primary key,
    amount numeric(10,2) not null,
    date date not null,
    is_active boolean not null
);

CREATE TABLE offers (
    id serial primary key,
    status varchar(20) not null
);

CREATE TABLE discounts (
    id serial primary key,
    status varchar(20) not null,
    discount numeric(10,2) not null
);

CREATE TABLE payments (
    id serial primary key,
    type varchar(50) not null
);

CREATE TABLE customers (
    id serial primary key,
    email varchar(100) not null,
    country_id integer not null,
    role_id integer not null,
    name varchar(50) not null,
    age integer not null,
    password varchar(100) not null,
    physical_address text
);

CREATE TABLE invoice_status (
    id serial primary key,
    status varchar(20) not null
);

CREATE TABLE products (
    id serial primary key,
    discount_id integer,
    offer_id integer,
    tax_id integer,
    name varchar(100) not null,
    details text,
    minimum_stock integer,
    maximum_stock integer,
    current_stock integer,
    price numeric(10,2) not null,
    price_with_tax numeric(10,2) not null
);

CREATE TABLE product_customers (
    product_id integer not null,
    customer_id integer not null
);

CREATE TABLE invoices (
    id serial primary key,
    customer_id integer not null,
    payment_id integer not null,
    invoice_status_id integer not null,
    date date not null,
    total_to_pay numeric(10,2) not null
);

CREATE TABLE orders (
    id serial primary key,
    invoice_id integer not null,
    product_id integer not null,
    detail text,
    amount integer not null,
    price numeric(10,2) not null
);
