/**
    Create features
*/
insert into colors (name) values ('Blue'), ('Yellow'), ('Gray'), ('Black');
select * from colors;

insert into cars (name, model, color_id) values ('BMW', 'M3 GTR', 3), ('Mustang', 'GT', 4), ('Corvette', 'C6', 2), ('corvette', 'c6', 2);
select * from cars;

/**
    Delete feature
*/
delete from cars where id = 4;

/**
    Update feature
*/
insert into colors (name) values('Red');
update cars set color_id = 5 where id = 3;

/**
    Select feature
*/
select ca.id, ca.name, ca.model, co.name as color from cars ca inner join colors co on co.id = ca.color_id;