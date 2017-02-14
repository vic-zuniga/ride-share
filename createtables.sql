create table if not exists users
(
	uid serial primary key,
	name varchar[50],
);

create table if not exists trips
(
	tid serial primary key,
	origin varchar[50],
	destination varchar[50],
	dateEarly date,
	dateLate date,
	price money,
	foreign key uid references users(uid)
);

create table if not exists passengers
(
	pid serial primary key
	tid int,
	uid int,
	foreign key tid references trips(tid),
	foreign key uid references users(uid)
);