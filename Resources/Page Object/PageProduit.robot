*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Choisir produit Interessant
    Click Link  xpath=//*[@id="search"]/div[1]/div[1]/div/span[1]/div[1]/div[4]/div/div/span/div/div/div[3]/div[1]/h2/a

    Wait Until Page contains  Ajouter au panier

Ajouter produit au panier
    Click Element  xpath=//*[@id="add-to-cart-button"]

    Click Element  //*[@id="attachSiNoCoverage"]/span/input

    Wait Until Page contains  Ajouté au panier


