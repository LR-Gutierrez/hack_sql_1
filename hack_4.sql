/**
    Insert feature
*/
INSERT INTO countries (name) values ('Albania'), ('Belgium'), ('Canada'), ('Denmark'), ('Egypt');
INSERT INTO priorities (type_name) values ('Low'), ('Medium'), ('High');
INSERT INTO contact_request (country_id, priority_id, name, detail, physical_address) VALUES (1, 2, 'John Doe', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', '123 Main Street, Lorem City'), (2, 3, 'Jane Smith', 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', '456 Elm Avenue, Ipsum Town'), (3, 1, 'Alice Johnson', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris.', '789 Oak Road, Dolor Village');
/**
    Delete
*/
DELETE FROM contact_request WHERE id = 3

/**
    Update
*/
UPDATE contact_request SET country_id = 1, priority_id = 1 WHERE id = 1;
UPDATE contact_request SET country_id = 2, priority_id = 2 WHERE id = 2;