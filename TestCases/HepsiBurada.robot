*** Settings ***
Resource          ../Resources/LoginPageKeywords.robot
Resource          ../Resources/HomePageKeywords.robot


*** Variables ***
${email}    hepsiburadatestotomasyon@gmail.com
${password}    123456.*
${username}    Oktay Uyar


*** Test Cases ***
Valid Login
    Given Hepsiburada.com sitesi açılır
    And Hepsiburada.com sitesinin açıldığı kontrol edilir
    When Hepsiburada.com sitesine giriş sayfasına gidilir
    And Hepsiburada.com sitesine giriş sayfasının açıldığı kontrol edilir
    And Hepsiburada.com sitesine giriş yapmak için email yazılır    ${email}
    And Hepsiburada.com sitesine giriş yapmak için parola yazılır    ${password}
    And Hepsiburada.com sitesine giriş yapmak için giriş yap butonuna tıklanır
    And Hepsiburada.com sitesine giriş yapıldığı kontrol edilir    ${username}