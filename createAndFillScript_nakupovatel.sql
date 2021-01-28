--vytvoreni tabulek

drop table nakupy;

create table nakupy (
id int not null,
id_zbozi int not null,
id_obchodu int not null,
datum date default sysdate
);

drop table zbozi;

create table zbozi (
id int not null,
nazevZbozi varchar(50),
cenaSdph number(9,2),
sazbaDPH number(9,2)
);

drop table obchod;

create table obchod (
id int not null,
nazevObchodu varchar(50),
mesto varchar(50),
rozlohaObchodu number(9,2)
);

--naplneni tabulek

TRUNCATE TABLE nakupy;

INSERT INTO nakupy VALUES (1, 1, 1, TO_DATE('2.11.2019','DD.MM.YYYY'));
INSERT INTO nakupy VALUES (2, 2, 2, TO_DATE('3.11.2019','DD.MM.YYYY'));
INSERT INTO nakupy VALUES (3, 2, 3, TO_DATE('4.11.2019','DD.MM.YYYY'));
INSERT INTO nakupy VALUES (4, 1, 4, TO_DATE('5.11.2019','DD.MM.YYYY'));
INSERT INTO nakupy VALUES (5, 2, 5, TO_DATE('1.12.2020','DD.MM.YYYY'));
INSERT INTO nakupy VALUES (6, 2, 2, TO_DATE('2.12.2020','DD.MM.YYYY'));
INSERT INTO nakupy VALUES (7, 1, 3, TO_DATE('3.12.2020','DD.MM.YYYY'));
INSERT INTO nakupy VALUES (8, 1, 2, TO_DATE('4.12.2020','DD.MM.YYYY'));
INSERT INTO nakupy VALUES (9, 2, 3, TO_DATE('5.12.2020','DD.MM.YYYY'));
INSERT INTO nakupy VALUES (10, 2, 5, TO_DATE('6.12.2020','DD.MM.YYYY'));

TRUNCATE TABLE zbozi;

INSERT INTO zbozi VALUES (1, 'Zbozi1', 300, 15);
INSERT INTO zbozi VALUES (2, 'Zbozi2', 400, 20);
INSERT INTO zbozi VALUES (3, 'Zbozi3', 350, 15);

TRUNCATE TABLE obchod;

INSERT INTO obchod VALUES (1, 'Obchod1', 'Pribor', 100);
INSERT INTO obchod VALUES (2, 'Obchod2', 'Praha', 300);
INSERT INTO obchod VALUES (3, 'Obchod3', 'Brno', 150);
INSERT INTO obchod VALUES (4, 'Obchod4', 'Praha', 170);
INSERT INTO obchod VALUES (5, 'Obchod5', 'Ostrava', 250);


