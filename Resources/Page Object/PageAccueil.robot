*** Settings ***
Library  SeleniumLibrary
Resource  ../variables.robot

*** Keywords ***
Charger La Page Web
    Go To  https://www.amazon.fr/

    Wait Until Page Contains  Amazon

    Click Element  name=accept  #cliquer sur le bouton accepter du cookie

Rechercher le produit
    Clear Element Text  id=twotabsearchtextbox  #nettoyer la zone de txte de la barre de recherche du site amazon

    Input Text  id=twotabsearchtextbox  ps5  #saisir dans la zone de recherche le produit cherché

    Wait Until Page Contains  ps5

    Click Element  xpath=//*[@id="nav-search-submit-button"]  #cliquer sur le symbole recherche

    Wait Until Page Contains  ps5




