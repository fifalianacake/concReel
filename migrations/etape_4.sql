-- Travail. Ajoutez les clients et rattachez-les aux commandes.
create table client(
    id INT PRIMARY KEY,
    nom VARCHAR(100),
    prenom VARCHAR(100)
);
alter table commande add column client_id INT references client(id); 

insert into client values (1, 'boobi', 'Choobi');
insert into client values (2, 'Cookie', 'Noumi');

insert into commande values(3, '2026-01-01', 1);
insert into commande values(4, '2026-01-02', 2);
insert into commande_detail values(4, 3, 5, 2);
insert into commande_detail values(5, 3, 4, 1);
insert into commande_detail values(6, 4, 3, 3);
