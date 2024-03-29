*** Settings ***
Resource          ../Resources/HomePageKeywords.robot
Resource          ../Resources/ProductSearchPageKeywords.robot
Test Setup  BasePageKeywords.Hepsiburada.com sitesi açılır
Test Teardown  BasePageKeywords.Test sonlandırılır


*** Variables ***
${productName}    bluetooth kulaklık
${productBrand}    jbl
${minPrice}     750
${maxPrice}     1000
${productColor}     Siyah


*** Test Cases ***
Hepsiburada.com sitesi ürün arama
    Given Hepsiburada.com sitesinin açıldığı kontrol edilir
    When Hepsiburada.com sitesinde arama alanına aranmak istenen ürün yazılır   ${productName}
    And Hepsiburada.com sitesinde ara butonuna tıklanır
    And Hepsiburada.com sitesinde kulaklık markası seçilir    ${productBrand}
    And Hepsiburada.com sitesinde kulaklık için fiyat aralığı seçilir    ${minPrice}    ${maxPrice}
    And Hepsiburada.com sitesinde kulaklık için siyah renk seçilir
    And Hepsiburada.com sitesinde seçilen filtreler kontrol edilir    ${productBrand}    ${minPrice}   ${maxPrice}   ${productColor}
    And Hepsiburada.com sitesinde listelenen kulaklıklardan biri seçilir
    Hepsiburada.com sitesinde seçilen kulaklığın filtrelere uyduğu kontrol edilir     ${productBrand}    ${productColor}
    And Hepsiburada.com sitesinde seçilen kulaklık için yapılan yorumlara tıklanır
    And Hepsiburada.com sitesinde kulaklık için yapılan yorumu faydalı buldum butonuna tıklanır
    Then Hepsiburada.com sitesinde yorumu beğendikten sonra teşekkür ederiz yazısının çıktığı kontrol edilir
