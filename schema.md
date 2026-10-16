## Etape 1 : Les plats
### Pieges : Quel type choisissez-vous pour le prix ? Quel identifiant choisissez-vous ?
- Le type INT est choisi pour le prix, et l'identifiant id est choisi comme clé primaire.

## Etape 2 :  Les categories
### Pieges :  Pourquoi ne pas simplement ajouter une colonne categorie VARCHAR(50) dans la table desplats ? Donnez un exemple de problème concret.
- Une colonne VARCHAR permet des saisies incohérentes : un utilisateur peut écrire categorie « soupe chinoise » et un autre « lasopy chinoise » pour désigner le même categorie, créant ainsi des catégories différentes.

## Etape 3 : Les commandes
### Piège. Pourquoi ne pas simplement ajouter une colonne categorie VARCHAR(50) dans la table des plats ? Donnez un exemple de problème concret.
- J'ai placez les qte dans commande-detail

## Etape 4 : Les Habitués
### Piège. Votre clé étrangère est-elle NOT NULL ? Quelle jointure faut-il pour ne perdre aucune commande ?
- Ma cle etrangere client_id est NOT NULL. Il faut utiliser une jointure LEFT JOIN pour ne perdre aucune commande.

## Etape 5 : Serveur et tables 
### Piège. Une table de la salle et une commande sont deux choses différentes : expliquez pourquoi. Pourquoi le nom table pose-t-il problème en SQL ?
- une table est un objet physique, tandis qu'une commande est un objet logique une table peuvent avoir plusieurs commandes tandis que une commande ne peut être associée qu'à une seule table.

- Le nom table pose problème en SQL car c'est un mot réservé.


### Shema
- plat(**id**,libelle,pu,#categorie_id) 
- categore(**id**,libelle) 
- commande(**id**,date,client_id,serveur_id,table_salle_id) *(modifier)*
- commande_detail(**id**,#commande_id,#plat_id,quantite) 
- client(**id**,nom,prenom) 
- serveur(**id**,nom,prenom) *(nouveau)*
- table_salle(**id**,numero) *(nouveau)*

