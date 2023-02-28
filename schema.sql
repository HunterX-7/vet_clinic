/* Database schema to keep the structure of entire database. */

create table animals(id bigserial not null primary key, name varchar(20), date_of_birth date, escape_attempts integer, neutered boolean, weight_kg decimal);
