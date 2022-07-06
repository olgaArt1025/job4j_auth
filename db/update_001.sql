create table if not exists person (
                        id serial primary key not null,
                        login varchar(2000),
                        password varchar(2000)
);

insert into person (login, password) values ('parsentev', '123');
insert into person (login, password) values ('ban', '123');
insert into person (login, password) values ('ivan', '123');

create table if not exists employee (
    id serial primary key not null,
    name varchar(2000),
    surname varchar(2000),
    inn varchar(2000),
    hired  TIMESTAMP
    );

CREATE TABLE if not exists employee_person (
       employee_id integer NOT NULL,
       person_id integer  NOT NULL,
       PRIMARY KEY (employee_id , person_id ),
       FOREIGN KEY (employee_id) REFERENCES employee,
       FOREIGN KEY (person_id ) REFERENCES person
)