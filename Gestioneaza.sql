-- Gestioneaza --
create table Gestioneaza
(
  id_personal mediumint unsigned ,
  id_cal mediumint unsigned ,
  constraint pk_Gestioneaza primary key(id_personal , id_cal),
  constraint fkPers_gestioneaza foreign key(id_personal) references personal(id_personal) on delete cascade ,
  constraint fkCai_gestioneaza foreign key(id_cal) references Cai(id_cal) on delete cascade
);

insert into gestioneaza
values(51,2002);
insert into gestioneaza
values(51,2003);
insert into gestioneaza
values(51,2004);
insert into gestioneaza
values(51,2005);
insert into gestioneaza
values(51,2006);
insert into gestioneaza
values(51,2007);
insert into gestioneaza
values(51,2008);
insert into gestioneaza
values(51,2009);
insert into gestioneaza
values(51,2010);

insert into gestioneaza
values(52,2011);
insert into gestioneaza
values(52,2012);
insert into gestioneaza
values(52,2013);
insert into gestioneaza
values(52,2014);
insert into gestioneaza
values(52,2015);
insert into gestioneaza
values(52,2016);
insert into gestioneaza
values(52,2017);
insert into gestioneaza
values(52,2018);
insert into gestioneaza
values(52,2019);


insert into gestioneaza
values(111,2003);
insert into gestioneaza
values(111,2004);
insert into gestioneaza
values(111,2005);
insert into gestioneaza
values(111,2006);


insert into gestioneaza
values(112,2008);
insert into gestioneaza
values(112,2009);
insert into gestioneaza
values(112,2010);
insert into gestioneaza
values(112,2011);

insert into gestioneaza
values(113,2013);
insert into gestioneaza
values(113,2014);
insert into gestioneaza
values(113,2015);
insert into gestioneaza
values(113,2016);
insert into gestioneaza
values(113,2017);
insert into gestioneaza
values(113,2018);
insert into gestioneaza
values(114,2019);
insert into gestioneaza
values(114,2012);
insert into gestioneaza
values(114,2007);
insert into gestioneaza
values(114,2002);

insert into gestioneaza
values(201,2002);
insert into gestioneaza
values(201,2003);
insert into gestioneaza
values(201,2004);
insert into gestioneaza
values(201,2005);
insert into gestioneaza
values(201,2006);
insert into gestioneaza
values(201,2007);
insert into gestioneaza
values(201,2008);
insert into gestioneaza
values(201,2009);

insert into gestioneaza
values(202,2010);
insert into gestioneaza
values(202,2011);
insert into gestioneaza
values(202,2012);
insert into gestioneaza
values(202,2013);
insert into gestioneaza
values(202,2014);
insert into gestioneaza
values(202,2015);
insert into gestioneaza
values(202,2016);
insert into gestioneaza
values(202,2017);
insert into gestioneaza
values(202,2018);
insert into gestioneaza
values(201,2019);

insert into gestioneaza
values(250,2002);
insert into gestioneaza
values(250,2003);
insert into gestioneaza
values(250,2004);
insert into gestioneaza
values(250,2005);
insert into gestioneaza
values(250,2006);
insert into gestioneaza
values(250,2007);
insert into gestioneaza
values(250,2008);
insert into gestioneaza
values(250,2009);
insert into gestioneaza
values(250,2010);

insert into gestioneaza
values(251,2011);
insert into gestioneaza
values(251,2012);
insert into gestioneaza
values(251,2013);
insert into gestioneaza
values(251,2014);
insert into gestioneaza
values(251,2015);
insert into gestioneaza
values(251,2016);
insert into gestioneaza
values(251,2017);
insert into gestioneaza
values(251,2018);
insert into gestioneaza
values(251,2019);


insert into gestioneaza
values(301,2002);
insert into gestioneaza
values(301,2003);
insert into gestioneaza
values(301,2004);
insert into gestioneaza
values(301,2005);

insert into gestioneaza
values(302,2006);
insert into gestioneaza
values(302,2007);
insert into gestioneaza
values(302,2008);
insert into gestioneaza
values(302,2009);
insert into gestioneaza
values(302,2010);

insert into gestioneaza
values(303,2011);
insert into gestioneaza
values(303,2012);
insert into gestioneaza
values(303,2013);
insert into gestioneaza
values(303,2014);

insert into gestioneaza
values(304,2015);
insert into gestioneaza
values(304,2016);
insert into gestioneaza
values(304,2017);
insert into gestioneaza
values(304,2018);
insert into gestioneaza
values(304,2019);

insert into gestioneaza
values(401,2002);
insert into gestioneaza
values(401,2003);
insert into gestioneaza
values(401,2004);
insert into gestioneaza
values(401,2005);
insert into gestioneaza
values(401,2006);
insert into gestioneaza
values(401,2007);

insert into gestioneaza
values(402,2008);
insert into gestioneaza
values(402,2009);
insert into gestioneaza
values(402,2010);
insert into gestioneaza
values(402,2011);
insert into gestioneaza
values(402,2012);
insert into gestioneaza
values(402,2013);

insert into gestioneaza
values(403,2014);
insert into gestioneaza
values(403,2015);
insert into gestioneaza
values(403,2016);
insert into gestioneaza
values(403,2017);
insert into gestioneaza
values(403,2018);
insert into gestioneaza
values(403,2019);

insert into gestioneaza
values(501,2002);
insert into gestioneaza
values(501,2003);
insert into gestioneaza
values(501,2004);
insert into gestioneaza
values(501,2005);
insert into gestioneaza
values(501,2006);
insert into gestioneaza
values(501,2007);

insert into gestioneaza
values(502,2008);
insert into gestioneaza
values(502,2009);
insert into gestioneaza
values(502,2010);
insert into gestioneaza
values(502,2011);
insert into gestioneaza
values(502,2012);
insert into gestioneaza
values(502,2013);

insert into gestioneaza
values(503,2014);
insert into gestioneaza
values(503,2015);
insert into gestioneaza
values(503,2016);
insert into gestioneaza
values(503,2017);
insert into gestioneaza
values(503,2018);
insert into gestioneaza
values(503,2019);

insert into gestioneaza
values(601,2002);
insert into gestioneaza
values(601,2003);
insert into gestioneaza
values(601,2004);
insert into gestioneaza
values(601,2005);
insert into gestioneaza
values(601,2006);
insert into gestioneaza
values(601,2007);
insert into gestioneaza
values(601,2008);
insert into gestioneaza
values(601,2009);
insert into gestioneaza
values(601,2010);

insert into gestioneaza
values(602,2011);
insert into gestioneaza
values(602,2012);
insert into gestioneaza
values(602,2013);
insert into gestioneaza
values(602,2014);
insert into gestioneaza
values(602,2015);
insert into gestioneaza
values(602,2016);
insert into gestioneaza
values(602,2017);
insert into gestioneaza
values(602,2018);
insert into gestioneaza
values(602,2019);
