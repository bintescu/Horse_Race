update pariori
set suma_totala = ifnull(suma_totala,0) + 
(select sum(suma/3)
from pariuri
where (id_cal,id_cursa,pozitie) in ( select id_cal,id_cursa,pozitie
								 from rezultate)
      and pariori.id_parior=pariuri.id_parior
group by id_parior
);

update pariori
set suma_totala = ifnull(suma_totala,0) -
(select sum(suma)
from pariuri
where (id_cal,id_cursa,pozitie) not in ( select id_cal,id_cursa,pozitie
								 from rezultate)
      and pariori.id_parior=pariuri.id_parior
group by id_parior
);
