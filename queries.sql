/*Queries that provide answers to the questions from all projects.*/

select * from animals where name like '%mon';
select * from animals where '2015-12-31' < date_of_birth and date_of_birth < '2020-01-01';
select name from animals where neutered=true and escape_attempts < 3;
select date_of_birth from animals where name='Agumon' or name='Pikachu';
select name, escape_attempts from animals where weight_kg >10.5;
select * from animals where neutered = true;
select * from animals where name !='Gabumon';
select * from animals where weight_kg <= 17.3 and weight_kg >= 10.4;

begin;
update animals set species = 'unspecified';
select * from animals;
rollback;
select * from animals;

begin;
update animals set species = 'Digimon' where name like '%mon';
select * from animals;
update animals set species = 'Pokemon' where species is null;
select * from animals;
commit;
select * from animals;

begin;
delete from animals;
select * from animals;
rollback;
select * from animals;

begin;
delete from animals where date_of_birth > '2022-01-01';
select * from animals;
savepoint number1;
update animals set weight_kg = weight_kg * -1;
select * from animals;
rollback to number1;
select * from animals;
update animals set weight_kg = weight_kg * -1 where weight_kg < 0;
select * from animals;
commit;

select count(*) from animals;

select count(*) from animals where escape_attempts = 0;

select avg(weight_kg) from animals;

select sum(escape_attempts) from animals where neutered = true;
select sum(escape_attempts) from animals where neutered = false;

select max(weight_kg) from animals where species = 'Pokemon';
select max(weight_kg) from animals where species = 'Digimon';
select min(weight_kg) from animals where species = 'Pokemon';
select min(weight_kg) from animals where species = 'Digimon';

select avg(escape_attempts) from animals where species = 'Pokemon' and date_of_birth > '1989-12-31' and date_of_birth < '2001-01-01';
select avg(escape_attempts) from animals where species = 'Digimon' and date_of_birth > '1989-12-31' and date_of_birth < '2001-01-01';

select animals.name from animals join owners on owners.id = animals.owners_id where owners.full_name = 'Melody Pond';
select animals.name from animals join species on species.id = animals.species_id where species.name = 'Pokemon';
select owners.full_name as owners, animals.name from animals full outer join owners on owners.id = animals.owners_id;
select species.name as species, count(animals.name) from animals join species on species.id = animals.species_id group by species.name;
select owners.full_name as owner, animals.name as name from animals join species on species.id = animals.species_id
join owners on owners.id = animals.owners_id where owners.full_name = 'Jennifer Orwell' and species.id = 2;
select animals.name from animals join owners on owners.id = animals.owners_id where animals.escape_attempts = 0 and owners.full_name = 'Dean Winchester';
select owners.full_name as owners, count(animals.name) as count from animals join owners on owners.id = animals.owners_id group by owners.full_name order by count desc limit 1;
