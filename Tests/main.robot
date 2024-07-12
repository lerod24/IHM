*** Settings ***
Resource  ../Resources/common.robot
Resource  ..//Resources/Page Object/PageAccueil.robot
Resource  ..//Resources/Page Object/PageProduit.robot
Resource  ..//Resources/Page Object/panier.robot

Suite Setup  common.Begin Web Test
Suite Teardown  common.End Web Test

*** Test Cases ***
voir produits disponibles
    PageAccueil.Charger La Page Web
    PageAccueil.Rechercher le produit

Choiir son produit
    PageProduit.Choisir produit Interessant
    PageProduit.Ajouter produit au panier

Procéder au paiement
    panier.Inspecter panier
    panier.Passer Commande