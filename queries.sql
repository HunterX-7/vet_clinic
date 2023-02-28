/*Queries that provide answers to the questions from all projects.*/

select * from animals where name like '%mon';
select * from animals where '2015-12-31' < date_of_birth and date_of_birth < '2020-01-01';
select name from animals where neutered=true and escape_attempts < 3;
select date_of_birth from animals where name='Agumon' or name='Pikachu';
select name, escape_attempts from animals where weight_kg >10.5;
select * from animals where neutered = true;
select * from animals where name !='Gabumon';
select * from animals where weight_kg <= 17.3 and weight_kg >= 10.4;
