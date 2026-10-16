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

-- Vérification : liste des commandes avec l nom du client, en affichant « client de passage » quand il n'y en a pas.
SELECT c.id, case
WHEN cl.nom IS NOT NULL THEN cl.nom || ' ' || cl.prenom
ELSE 'client de passage'
END AS nom_client
FROM commande c
LEFT JOIN client cl ON c.client_id = cl.id;