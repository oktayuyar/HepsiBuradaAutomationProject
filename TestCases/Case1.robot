*** Settings ***
Resource          ../Resources/LoginPageKeywords.robot
Resource          ../Resources/HomePageKeywords.robot
Resource          ../Resources/MyBasketPageKeywords.robot


*** Variables ***
${email}    hepsiburadatestotomasyon@gmail.com
${password}    123456.*
${username}    Oktay Uyar
${productName}    bluetooth kulaklık


*** Test Cases ***
Hepsiburada.com sitesine giriş yapıp ürün satın alma
    Given Hepsiburada.com sitesi açılır
    And Hepsiburada.com sitesinin açıldığı kontrol edilir
    When Hepsiburada.com sitesine giriş sayfasına gidilir
    And Hepsiburada.com sitesine giriş sayfasının açıldığı kontrol edilir
    And Hepsiburada.com sitesine giriş yapmak için email yazılır    ${email}
    And Hepsiburada.com sitesine giriş yapmak için parola yazılır    ${password}
    And Hepsiburada.com sitesine giriş yapmak için giriş yap butonuna tıklanır
    And Hepsiburada.com sitesine giriş yapıldığı kontrol edilir    ${username}
    And Hepsiburada.com sitesinde ana sayfadan bir ürün seçilir
    And Hepsiburada.com sitesinde seçilen ürün sepete eklenir
    And Hepsiburada.com sitesinde sepetim butonuna tıklanır
    And Hepsiburada.com sitesinde alışverişi tamamla butonuna tıklanır
    And Hepsiburada.com sitesinde devam et butonuna tıklanır