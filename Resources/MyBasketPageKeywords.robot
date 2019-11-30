*** Settings ***
Variables         ../PageObjects/MyBasketPageLocators.py
Resource          ../Resources/BasePageKeywords.robot


*** Keywords ***
Hepsiburada.com sitesinde alışverişi tamamla butonuna tıklanır
    Click Button   ${btnCompleteShopping}


Hepsiburada.com sitesinde devam et butonuna tıklanır
    Click Button   ${btnContinue}
