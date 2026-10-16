## Etape 1 : Les plats
### Pieges : Quel type choisissez-vous pour le prix ? Quel identifiant choisissez-vous ?
- Le type INT est choisi pour le prix, et l'identifiant id est choisi comme clé primaire.

## Etape 2 :  Les categories
### Pieges :  Pourquoi ne pas simplement ajouter une colonne categorie VARCHAR(50) dans la table desplats ? Donnez un exemple de problème concret.
- Une colonne VARCHAR permet des saisies incohérentes : un utilisateur peut écrire categorie « soupe chinoise » et un autre « lasopy chinoise » pour désigner le même categorie, créant ainsi des catégories différentes.

## Etape 3 : Les commandes
- J'ai placez les qte dans commande-detail

## Etape 4 : Les Habitués
- Ma cle etrangere client_id est NOT NULL. Il faut utiliser une jointure LEFT JOIN pour ne perdre aucune commande.


### Shema
- plat(**id**,libelle,pu,#categorie_id) *(modifier)*
- categore(**id**,libelle) *(nouveau)*
- commande(**id**,date,client_id) *(modifier)*
- commande (**id**,#commande_id,#plat_id,quantite) *(nouveau*)
- client(**id**,nom,prenom) *(nouveau)*

