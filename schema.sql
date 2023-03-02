/* Database schema to keep the structure of entire database. */

create table animals(id bigserial not null primary key, name varchar(20), date_of_birth date, escape_attempts integer, neutered boolean, weight_kg decimal);
alter table animals add column species varchar(20);

create table owners(id int generated always as identity, full_name varchar(60), age integer, primary key(id));
create table species(id int generated always as identity, name varchar(30), primary key(id));

begin;
alter table animals drop species;
select * from animals;
alter table animals add column species_id integer;
select * from animals;
alter table animals add constraint fk_1 foreign key(species_id) references species(id);
alter table animals add column owners_id integer;
select * from animals;
alter table animals add constraint fk_2 foreign key(owners_id) references owners(id);
commit;
