create database tasklist;

use tasklist;
create table user
(
	userid int not null auto_increment,
	name varchar(255) not null,
	email varchar(255),
    password varchar(255),
	primary key(userid)
);

insert into user (name, email, password)
values ("Grant Chirpus", "grand@circus.bootcamp", "password");

create table task
(
	id int not null auto_increment,
    userid int not null,
	task varchar(255),
	duedate date,
    complete boolean,
	primary key(id)
);

insert into task (userid, task, duedate, complete)
values (1, "Apply for bootcamp.", "2018-03-01", true);

insert into task (userid, task, duedate, complete)
values (1, "Pass initial interview.", "2018-03-15", true);

insert into task (userid, task, duedate, complete)
values (1, "Submit pre-work.", "2018-03-30", false);

insert into task (userid, task, duedate, complete)
values (1, "Bootcamp orientation.", "2018-04-15", false);

insert into task (userid, task, duedate, complete)
values (1, "Assessment 1.", "2018-04-30", false);

insert into task (userid, task, duedate, complete)
values (1, "Capstone project.", "2018-05-15", false);

insert into task (userid, task, duedate, complete)
values (1, "Assesment 2.", "2018-05-15", false);

insert into task (userid, task, duedate, complete)
values (1, "Final projects start.", "2018-06-15", false);

insert into task (userid, task, duedate, complete)
values (1, "Demo Day.", "2018-06-29", false);

insert into task (userid, task, duedate, complete)
values (1, "Get a job!", "2018-06-30", false);