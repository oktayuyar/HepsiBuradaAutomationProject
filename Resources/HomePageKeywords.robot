*** Settings ***
Variables         ../PageObjects/HomePageLocators.py
Resource          ../Resources/BasePageKeywords.robot


*** Variables ***
${welcomePageTitle}    Türkiye'nin En Büyük Online Alışveriş Sitesi Hepsiburada.com
${urlHomePage}         https://www.hepsiburada.com
${urlLoginPage}        https://www.hepsiburada.com/uyelik/giris


*** Keywords ***
Hepsiburada.com sitesinin açıldığı kontrol edilir
    Title Should Be    ${welcomePageTitle}


Hepsiburada.com sitesine giriş sayfasına gidilir
    Go To    ${urlLoginPage}


Hepsiburada.com sitesine giriş yapıldığı kontrol edilir
    [Arguments]    ${username}
    ${response} =   Get Text      ${txtUserName}
    Should Be Equal As Strings    ${response}    ${username}


Hepsiburada.com sitesinde ana sayfadan bir ürün seçilir
    Click Element  ${btnProduct}


Hepsiburada.com sitesinde seçilen ürün sepete eklenir
    Click Button   ${btnAddToBasket}


Hepsiburada.com sitesinde sepetim butonuna tıklanır
    Sleep    5s
    Wait Until Element Is Visible    ${btnMyBasket}
    Click Link   ${btnMyBasket}


Hepsiburada.com sitesinde arama alanına aranmak istenen ürün yazılır
    [Arguments]    ${productName}
    Input Text    ${txtSearch}    ${productName}


Hepsiburada.com sitesinde ara butonuna tıklanır
    Click Button   ${btnSearch}


