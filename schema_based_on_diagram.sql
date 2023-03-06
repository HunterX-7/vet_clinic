create database clinic;

create table if not exists patients(id int generated always as identity, name varchar(20), date_of_birth date, primary key(id));

create table if not exists medical_histories(id int generated always as identity, admitted_at timestamp, patient_id int references patients(id), status varchar(20) primary key(id));

create table if not exists medical_history_treatment(treatment_id references treatments(id), medical_histories_id references medical_histories(id));

create table if not exists treatments(id int generated always as identity, type varchar(30), name varchar(30), primary key(id));

create table if not exists invoice_items(id int generated always as identity, unit_price decimal, quantity integer, total_price decimal, invoice_id int, treatment_id int, 
primary key(id));
alter table invoice_items add foreign key(invoice_id) references invoices(id);
alter table invoice_items add foreign key(treatment_id) references treatments(id);

create table if not exists invoices(id int generated always as identity, total_amount decimal, generated_at timestamp, payed_at timestamp, 
medical_history_id int references medical_histories(id), primary key(id));

create index patient_id on medical_histories(patient_id asc);

create index medical_treatment_id on medical_history_treatment(treatment_id asc);
create index medical_histories_id on medical_history_treatment(medical_history_id asc);

create index invoice_id on invoice_items(invoice_id asc);
create index treatment_id on invoice_items(treatment_id asc);

create index medical_history_id on invoices(medical_history_id asc);
