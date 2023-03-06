/* Populate database with sample data. */

insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) values ('Agumon', '2020-02-03', 0, true, 10.23);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) values ('Gabumon', '2018-11-15', 2, true, 8);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) values ('Pikachu', '2021-01-07', 1, false, 15.04);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) values ('Devimon', '2017-05-12', 5, true, 11);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) values ('Charmander', '2020-02-08', 0, false, -11);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) values ('Plantmon', '2021-11-15', 2, true, -5.7);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) values ('Squirtle', '1993-04-02', 3, false, -12.13);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) values ('Angemon', '2005-06-12', 1, true, -45);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) values ('Boarmon', '2005-06-07', 7, true, 20.4);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) values ('Blossom', '1998-10-13', 3, true, 17);
insert into animals (name, date_of_birth, escape_attempts, neutered, weight_kg) values ('Ditto', '2022-05-14', 4, true, 22);

insert into owners(full_name, age) values ('Sam Smith', 34);
insert into owners(full_name, age) values ('Jennifer Orwell', 19);
insert into owners(full_name, age) values ('Bob', 45);
insert into owners(full_name, age) values ('Melody Pond', 77);
insert into owners(full_name, age) values ('Dean Winchester', 14);
insert into owners(full_name, age) values ('Jodie Whittaker', 38);

insert into species(name) values ('Pokemon');
insert into species(name) values ('Digimon');

update animals set species_id=2 where name like '%mon';
update animals set species_id=1 where species_id is null;

update animals set owners_id = 1 where name = 'Agumon';
update animals set owners_id = 2 where name = 'Gabumon' or name = 'Pikachu';
update animals set owners_id = 3 where name = 'Devimon' or name = 'Plantmon';
update animals set owners_id = 4 where name = 'Charmander' or name = 'Squirtle' or name = 'Blossom';
update animals set owners_id = 5 where name = 'Angemon' or name = 'Boarmon';

insert into vets(name, age, date_of_graduation) values ('William Tatcher', 45, '2020-04-23');
insert into vets(name, age, date_of_graduation) values ('Maisy Smith', 26, '2019-01-17');
insert into vets(name, age, date_of_graduation) values ('Stephanie Mendez', 64, '1981-05-04');
insert into vets(name, age, date_of_graduation) values ('Jack Harkness', 38, '2008-06-08');

insert into specializations(species_id, vet_id) values (1,1);
insert into specializations(species_id, vet_id) values (1,3);
insert into specializations(species_id, vet_id) values (2,3);
insert into specializations(species_id, vet_id) values (2,4);

insert into visits(animal_id, vet_id, date_of_visit) values (1,1, '2020-05-24');
insert into visits(animal_id, vet_id, date_of_visit) values (1,3, '2020-07-22');
insert into visits(animal_id, vet_id, date_of_visit) values (2,4, '2021-02-02');
insert into visits(animal_id, vet_id, date_of_visit) values (3,2, '2020-01-05');
insert into visits(animal_id, vet_id, date_of_visit) values (3,2, '2020-03-08');
insert into visits(animal_id, vet_id, date_of_visit) values (3,2, '2020-05-14');
insert into visits(animal_id, vet_id, date_of_visit) values (4,3, '2021-05-04');
insert into visits(animal_id, vet_id, date_of_visit) values (5,4, '2021-02-24');
insert into visits(animal_id, vet_id, date_of_visit) values (6,2, '2019-12-21');
insert into visits(animal_id, vet_id, date_of_visit) values (6,1, '2020-08-10');
insert into visits(animal_id, vet_id, date_of_visit) values (6,2, '2021-04-07');
insert into visits(animal_id, vet_id, date_of_visit) values (7,3, '2019-09-29');
insert into visits(animal_id, vet_id, date_of_visit) values (8,4, '2020-10-03');
insert into visits(animal_id, vet_id, date_of_visit) values (8,4, '2020-11-04');
insert into visits(animal_id, vet_id, date_of_visit) values (9,2, '2019-01-24');
insert into visits(animal_id, vet_id, date_of_visit) values (9,2, '2019-05-15');
insert into visits(animal_id, vet_id, date_of_visit) values (9,2, '2020-02-27');
insert into visits(animal_id, vet_id, date_of_visit) values (9,2, '2020-08-03');
insert into visits(animal_id, vet_id, date_of_visit) values (10,3, '2020-05-24');
insert into visits(animal_id, vet_id, date_of_visit) values (10,1, '2021-01-11');

INSERT INTO visits (animal_id, vet_id, date_of_visit) SELECT * FROM (SELECT id FROM animals) animal_ids, (SELECT id FROM vets) vets_ids, generate_series('1980-01-01'::timestamp, '2021-01-01', '4 hours') visit_timestamp;
insert into owners (full_name, email) select 'Owner ' || generate_series(1,2500000), 'owner_' || generate_series(1,2500000) || '@mail.com';
