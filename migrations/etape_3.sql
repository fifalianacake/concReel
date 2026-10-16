-- Travail. Une commande contient plusieurs plats, et un plat apparaît dans plusieurs commandes.*

create table commande(
    id INT PRIMARY KEY,
    date DATE
);
create table commande_detail(
    id INT PRIMARY KEY,
    commande_id INT references commande(id),
    plat_id INT,
    quantite INT 
);

insert into commande values(1, '2026-01-01');
insert into commande values(2, '2026-01-02');
insert into commande_detail values(1, 1, 1, 2);
insert into commande_detail values(2, 1, 2, 1);
insert into commande_detail values(3, 2, 3, 3);