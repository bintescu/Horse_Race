create table Joburi
(
  id_job varchar(20) ,
  denumire varchar(30) unique ,
  salariu_minim double not null ,
  salariu_maxim double not null,
  constraint pk_joburi primary key(id_job)
);

insert into Joburi
values ( 'GRJ' , 'Grajdar', 1500 , 2500);

insert into Joburi
values ( 'TRP_MSJ' , 'Terapeut Masaj' , 3000, 4500);

insert into Joburi
values ( 'POTCV' , 'Potcovar', 3000 , 3800);

insert into Joburi
values ( 'JOK' , 'Jocheu' , 5000 , 7500);

insert into Joburi
values ( 'FOTO' , 'Fotograf', 1200 , 2300);

insert into Joburi
values ( 'VETD' , 'Veterinar dentist' , 4000, 7700);

insert into Joburi
values ( 'VET', 'Veterinar', 3500, 5500);

insert into Joburi
values ('ANTR' , 'Antrenor', 4400, 12000);
