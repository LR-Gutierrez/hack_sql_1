create table priorities (
	id serial primary key, 
	type_name varchar (20) not null
);
create table countries (
	id serial primary key, 
	name varchar (50) not null
);

create table contact_request (
	id serial primary key,
    country_id integer not null,
    priority_id integer not null,
    name varchar(50) not null,
    detail text,
    physical_address text,
    
    foreign key (country_id) references countries(id),
    foreign key (priority_id) references priorities(id)
);