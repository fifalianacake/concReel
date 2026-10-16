## Etape 1 : Les plats
### Pieges : Quel type choisissez-vous pour le prix ? Quel identifiant choisissez-vous ?
- Le type INT est choisi pour le prix, et l'identifiant id est choisi comme clé primaire.

## Etape 2 :  Les categories
### Pieges :  Pourquoi ne pas simplement ajouter une colonne categorie VARCHAR(50) dans la table desplats ? Donnez un exemple de problème concret.
- Une colonne VARCHAR permet des saisies incohérentes : un utilisateur peut écrire categorie « soupe chinoise » et un autre « lasopy chinoise » pour désigner le même categorie, créant ainsi des catégories différentes.

### Shema
- plat(**id**,libelle,pu,#categorie_id) *(modifier)*
- categore(**id**,libelle) *(nouveau)*
