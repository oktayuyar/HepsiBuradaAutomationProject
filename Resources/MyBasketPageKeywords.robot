*** Settings ***
Variables         ../PageObjects/MyBasketPageLocators.py
Resource          ../Resources/BasePageKeywords.robot


*** Variables ***
${titleMyBasket}      Sepetim
${titleDeliveryInformation}      Teslimat Bilgileri
${titlePaymentSelection}      Ödeme yöntemi seçiniz


*** Keywords ***
Hepsiburada.com sitesinde sepetim sayfasının açıldığı kontrol edilir
    ${response} =   Get Text      ${txtMyBasket}
    Should Be Equal As Strings    ${response}     ${titleMyBasket}

Hepsiburada.com sitesinde alışverişi tamamla butonuna tıklanır
    Click Button   ${btnCompleteShopping}


Hepsiburada.com sitesinde devam et butonuna tıklanır
    Click Button   ${btnContinue}


Hepsiburada.com sitesinde teslimat adresi adımında olduğumuz kontrol edilir
    ${response} =   Get Text      ${txtDeliveryInformation}
    Should Be Equal As Strings    ${response}     ${titleDeliveryInformation}


Hepsiburada.com sitesinde ödeme adımında olduğumuz kontrol edilir
    ${response} =   Get Text      ${txtPaymentSelection}
    Should Be Equal As Strings    ${response}     ${titlePaymentSelection}