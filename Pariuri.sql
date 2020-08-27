create table Pariuri
(
  id_pariu mediumint unsigned ,
  suma double not null ,
  pozitie tinyint unsigned not null,
  data date ,
  id_cal mediumint unsigned not null,
  id_cursa mediumint unsigned not null,
  id_parior mediumint unsigned ,
  constraint fk_pariuri foreign key(id_parior) references pariori(id_parior) on delete cascade ,
  constraint pk_id_pariu primary key(id_pariu)
  );
alter table pariuri
add constraint fkRezultat_pariu foreign key(id_cal,id_cursa) references Rezultate (id_cal,id_cursa) on delete cascade;

insert into pariuri
values(1,130,3,'2016-01-20',2006,3000,10);
insert into pariuri
values(2,230,2,'2016-02-13',2006,3000,11);
insert into pariuri
values(3,300,3,'2016-03-11',2006,3000,12);
insert into pariuri
values(4,170,1,'2016-05-08',2006,3000,16);
insert into pariuri
values(5,50,7,'2016-05-09',2006,3000,17);

insert into pariuri
values(6,50,2,'2016-02-10',2006,3001,10);
insert into pariuri
values(7,50,1,'2016-03-05',2006,3001,10);
insert into pariuri
values(8,50,3,'2016-04-21',2006,3001,10);
insert into pariuri
values(9,100,7,'2016-04-28',2006,3001,15);
insert into pariuri
values(10,2000,1,'2016-05-20',2006,3001,18);
insert into pariuri
values(11,25,4,'2016-01-13',2006,3001,13);


insert into pariuri
values(12,30,2,'2016-02-28',2009,3002,10);
insert into pariuri
values(13,120,1,'2016-04-30',2009,3002,11);
insert into pariuri
values(14,440,1,'2016-05-20',2006,3002,14);
insert into pariuri
values(15,520,4,'2016-04-16',2009,3002,17);

insert into pariuri
values(16,333.50,11,'2017-08-24',2008,3006,10);
insert into pariuri
values(18,2000,1,'2018-04-01',2015,3006,13);




