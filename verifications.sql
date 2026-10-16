-- Etape 1:afficher les plats du plus cher au moins cher.
SELECT * FROM plats ORDER BY pu DESC;

--Etape 2 Vérification : nombre de plats par catégorie, y compris les catégories sans plat.
SELECT c.libelle, COUNT(p.id) AS nombre_plats
FROM categorie c
LEFT JOIN plats p ON c.id = p.categorie_id
GROUP BY c.libelle;

-- Etape 3 Vérification : montant total de chaque commande.
select c.id, SUM(p.pu * cd.quantite) AS montant_total
from commande c
LEFT JOIN commande_detail cd ON c.id = cd.commande_id
LEFT JOIN plats p ON cd.plat_id = p.id
GROUP BY c.id;