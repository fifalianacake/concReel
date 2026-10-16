--  1. Travail. Créez la première table et insérez les sept plats du contexte. Vérification : afficher les plats du plus cher au moins cher.

CREATE TABLE plats(
    id INT PRIMARY KEY,
    libelle VARCHAR(255),
    pu INT
);

insert into plats values(1, 'Romazava', 7000);
insert into plats values(2, 'Ravitoto sy henakisoa', 8000);
insert into plats values(3, 'Akoho sy voanio', 8500);
insert into plats values(4, 'Mi sao', 6000);
insert into plats values(5, 'Soupe Chinois', 5000);
insert into plats values(6, 'Mofo gasy (4 pieces)', 1000);
insert into plats values(7, 'Boisson', 500);

-- Piège. Quel type choisissez-vous pour le prix ? Quel identifiant choisissez-vous ?
-- Le type INT est choisi pour le prix, et l'identifiant id est choisi comme clé primaire.


