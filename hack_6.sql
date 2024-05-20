/** 
    Inserts
*/
INSERT INTO countries (name) VALUES ('United States'), ('United Kingdom'), ('Canada');

INSERT INTO roles (name, description, actions) VALUES 
  ('Admin', 'Administrator', 'Full access'),
  ('Customer', 'Regular customer', 'View, purchase'),
  ('Vendor', 'Product seller', 'Manage products');

INSERT INTO taxes (amount, date, is_active) VALUES
  (0.08, '2023-05-01', true),
  (0.10, '2023-06-01', true),
  (0.05, '2023-07-01', true);

INSERT INTO offers (status) VALUES 
  ('Active'),
  ('Expired'),
  ('Upcoming');

INSERT INTO discounts (status, discount) VALUES
  ('Active', 0.20),
  ('Expired', 0.15),
  ('Upcoming', 0.10);

INSERT INTO payments (type) VALUES
  ('Credit Card'),
  ('PayPal'),
  ('Bank Transfer');

INSERT INTO customers (email, country_id, role_id, name, age, password, physical_address) VALUES
  ('john@example.com', 1, 2, 'John Doe', 35, 'password123', '123 Main St, New York, NY'),
  ('jane@example.com', 2, 2, 'Jane Smith', 28, 'password456', '456 Oxford St, London, UK'),
  ('bob@example.com', 3, 2, 'Bob Johnson', 42, 'password789', '789 Maple Ave, Toronto, ON');

INSERT INTO invoice_status (status) VALUES
  ('Pending'),
  ('Paid'),
  ('Cancelled');

INSERT INTO products (discount_id, offer_id, tax_id, name, details, minimum_stock, maximum_stock, current_stock, price, price_with_tax) VALUES
  (1, 1, 1, 'Product A', 'Description of Product A', 10, 100, 50, 19.99, 21.59),
  (2, 2, 2, 'Product B', 'Description of Product B', 5, 50, 20, 29.99, 32.99),
  (3, 3, 3, 'Product C', 'Description of Product C', 15, 150, 75, 14.99, 15.74);

INSERT INTO product_customers (product_id, customer_id) VALUES
  (1, 1),
  (2, 2),
  (3, 3);

INSERT INTO invoices (customer_id, payment_id, invoice_status_id, date, total_to_pay) VALUES
  (1, 1, 1, '2024-05-23', 21.59),
  (2, 2, 2, '2024-06-11', 32.99),
  (3, 3, 1, '2024-01-06', 15.74);

INSERT INTO orders (invoice_id, product_id, detail, amount, price) VALUES
  (1, 1, 'Order for Product A', 1, 19.99),
  (2, 2, 'Order for Product B', 1, 29.99),
  (3, 3, 'Order for Product C', 1, 14.99);

/** 
    Delete
*/
DELETE FROM customers
WHERE id = (SELECT id FROM customers ORDER BY id DESC LIMIT 1);

/**
    Update
*/
UPDATE customers SET email = 'updated_email@example.com', name = 'Updated Name' WHERE id = (SELECT id FROM customers ORDER BY id DESC LIMIT 1);
UPDATE taxes SET amount = amount * 1.05, is_active = true;
UPDATE products SET price = price * 1.05, price_with_tax = price_with_tax * 1.05;
