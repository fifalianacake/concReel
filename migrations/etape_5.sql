-- Travail. Ajoutez les serveurs (Njaka Rakoto, Lalao Rasoa) et les huit tables de la salle. 
create table serveur(
    id INT PRIMARY KEY,
    nom VARCHAR(100),
    prenom VARCHAR(100)
);

create table table_salle(
    id INT PRIMARY KEY,
    numero VARCHAR(100)
);
alter table commande add column serveur_id INT references serveur(id); 
alter table commande add column table_salle_id INT references table_salle(id);

insert into serveur values (1, 'Rakoto', 'Njaka');
insert into serveur values (2, 'Rasoa', 'Lalao');

insert into table_salle values (1, 'table 1');
insert into table_salle values (2, 'table 2');
insert into table_salle values (3, 'table 3');
insert into table_salle values (4, 'table 4');
insert into table_salle values (5, 'table 5');
insert into table_salle values (6, 'table 6');
insert into table_salle values (7, 'table 7');
insert into table_salle values (8, 'table 8');


update commande set serveur_id = 1 where id in (1,3);
update commande set serveur_id = 2 where id in (2,4);
update commande set table_salle_id = 1 where id in (1,3);
update commande set table_salle_id = 2 where id in (2,4);