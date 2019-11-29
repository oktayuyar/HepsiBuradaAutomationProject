*** Settings ***
Variables         ../PageObjects/LoginPageLocators.py
Resource          ../Resources/BasePageKeywords.robot


*** Variables ***
${loginPageTitle}     Üye Giriş Sayfası – Hepsiburada.com

*** Keywords ***
Hepsiburada.com sitesine giriş sayfasının açıldığı kontrol edilir
    Title Should Be    ${loginPageTitle}

Hepsiburada.com sitesine giriş yapmak için email yazılır
    [Arguments]    ${email}
    Input Text    ${txtEmail}    ${email}

Hepsiburada.com sitesine giriş yapmak için parola yazılır
    [Arguments]    ${password}
    Input Text    ${txtPassword}    ${password}

Hepsiburada.com sitesine giriş yapmak için giriş yap butonuna tıklanır
    Click Button   ${btnLogin}

