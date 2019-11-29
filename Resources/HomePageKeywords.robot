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