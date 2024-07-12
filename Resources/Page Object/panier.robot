*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Inspecter panier
    Click Link  xpath=//*[@id="nav-cart"]

    Wait Until Page Contains  Votre panier

Passer Commande
    Click Element  //*[@id="sc-buy-box-ptc-button"]/span/input

    Wait Until Page Contains  S'identifier
