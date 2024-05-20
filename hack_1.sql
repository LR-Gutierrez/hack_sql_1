create table colors (
	id serial primary key, 
	name varchar (20) not null
);

create table cars (
	id serial primary key, 
	name varchar(50) not null,
	model varchar(30),
	color_id integer not null,
	
	foreign key (color_id) references colors (id)
);