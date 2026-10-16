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

-- Etape 4 Vérification : liste des commandes avec l nom du client, en affichant « client de passage » quand il n'y en a pas.
SELECT c.id, case
WHEN cl.nom IS NOT NULL THEN cl.nom || ' ' || cl.prenom
ELSE 'client de passage'
END AS nom_client
FROM commande c
LEFT JOIN client cl ON c.client_id = cl.id;

-- Etape 5 Vérification : nombre de commandes et chiffre d'affaires par serveur.
SELECT s.id, s.nom, s.prenom, COUNT(c.id) AS nombre_commandes, SUM(p.pu * cd.quantite) AS chiffre_affaires
FROM serveur s
LEFT JOIN commande c ON s.id = c.serveur_id
LEFT JOIN commande_detail cd ON c.id = cd.commande_id
LEFT JOIN plats p ON cd.plat_id = p.id
GROUP BY s.id, s.nom, s.prenom;

-- Etape 6 Vérification : liste des commandes non soldées avec le montant dû, le montant payé et le reste à payer.
SELECT c.id, 
       SUM(p.pu * cd.quantite) AS montant_du, 
       COALESCE(SUM(pd.montant), 0) AS montant_paye, 
       SUM(p.pu * cd.quantite) - COALESCE(SUM(pd.montant), 0) AS reste_a_payer
FROM commande c
LEFT JOIN commande_detail cd ON c.id = cd.commande_id
LEFT JOIN plats p ON cd.plat_id = p.id
LEFT JOIN paiement pa ON c.id = pa.commande_id
LEFT JOIN paiement_detail pd ON pa.id = pd.paiement_id
GROUP BY c.id
HAVING SUM(p.pu * cd.quantite) - COALESCE(SUM(pd.montant), 0) > 0;