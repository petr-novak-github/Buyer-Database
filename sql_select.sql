--1. Kolik jsem celkem utratil v listopadu 2019 v obchodech, které mají o svátcích zavřeno? (prodejní plocha nad 200 m2)

select * from nakupy
left join zbozi ON (zbozi.id=nakupy.id_zbozi)
left join obchod on (obchod.id=nakupy.id_obchodu)
where 
(extract(year from to_date(nakupy.datum)) =2019) and
(extract(month from to_date(nakupy.datum)) =11) and
obchod.rozlohaobchodu > 200
order by nakupy.id;



--2. Kolik jsem utratil za ty druhy zboží, které mají 15 % DPH?

select sum(zbozi.cenasdph) as ZaZboziS15DphSemUtratil 
from nakupy
left join zbozi ON (zbozi.id=nakupy.id_zbozi)
where zbozi.sazbadph = 15
order by nakupy.id;


--3. Kolik jsem celkem v Praze utratil za ty druhy zboží, které mají 15 % DPH?

select sum(zbozi.cenasdph) as ZaZboziS15DphVprazeSemUtratil 
from nakupy
left join zbozi ON (zbozi.id=nakupy.id_zbozi)
left join obchod on (obchod.id=nakupy.id_obchodu)
where zbozi.sazbadph = 15 and obchod.mesto = 'Praha' 
order by nakupy.id;


--4. Ve kterém městě jsem utratil nejméně? 

select obchod.mesto, sum(zbozi.cenasdph) as total
from nakupy
left join zbozi ON (zbozi.id=nakupy.id_zbozi)
left join obchod on (obchod.id=nakupy.id_obchodu)
group by obchod.mesto
order by total;

--5. Který druh zboží jsem vůbec nekoupil? 

select zbozi.nazevzbozi from zbozi
left join nakupy on zbozi.id = nakupy.id_zbozi
where id_zbozi is null
;