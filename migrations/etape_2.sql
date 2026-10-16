-- Travail. La table des plats contient déjà des données. Ajoutez la catégorie sans perdre ces données, puis rendez-la obligatoire. 
CREATE TABLE categorie(
    id INT PRIMARY KEY,
    libelle VARCHAR(255)
);

ALTER TABLE plats ADD COLUMN categorie_id INT;

insert into categorie VALUES(1, 'Plat malagsy');
insert into categorie values(2, 'Plat chinois');
insert into categorie values(3, 'Dessert et gouter');
insert into categorie values(4, 'Boisson');
insert into categorie values(5, 'Soupe');

UPDATE plats SET categorie_id = 1 WHERE id IN (1, 2, 3);
UPDATE plats SET categorie_id = 2 WHERE id = 4;
UPDATE plats SET categorie_id = 5 WHERE id = 5;
update plats set categorie_id = 3 where id= 6;
update plats set categorie_id = 4 where id=7;

ALTER TABLE plats ALTER COLUMN categorie_id SET NOT NULL;