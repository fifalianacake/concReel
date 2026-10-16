-- Travail. Enregistrez les paiements de la commande 1 (10 000 Ar en espèces et 5 000 Ar par MVola) et de la commande 2 (6 000 Ar par Orange Money).

create table paiement(
    id INT PRIMARY KEY,
    commande_id INT REFERENCES commande(id)
);
create table type_paiements(
    id INT PRIMARY KEY,
    libelle VARCHAR(100)
);

create table paiement_detail(
    id INT PRIMARY KEY,
    paiement_id INT REFERENCES paiement(id),
    type_paiement_id INT REFERENCES type_paiements(id),
    montant DECIMAL(10,2)
);

insert into type_paiements (id, libelle) values (1, 'Espèces'), (2, 'MVola'), (3, 'Orange Money');

insert into paiement (id, commande_id) values (1, 1), (2, 2);
insert into paiement_detail (id, paiement_id, type_paiement_id, montant) values 
(1, 1, 1, 10000), 
(2, 1, 2, 5000), 
(3, 2, 3, 6000);

