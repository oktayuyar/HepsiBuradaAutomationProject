*** Settings ***
Variables         ../PageObjects/ProductSearchPageLocators.py
Resource          ../Resources/BasePageKeywords.robot


*** Variables ***
${messageThankYou}        Teşekkür Ederiz.


*** Keywords ***
Hepsiburada.com sitesinde kulaklık markası seçilir
    [Arguments]    ${productBrand}
    Input Text    ${txtProductBrand}    ${productBrand}
    Sleep   3s
    #Wait Until Element Is Enabled    ${btnProductBrand}
    Click Element   ${btnProductBrand}


Hepsiburada.com sitesinde kulaklık için fiyat aralığı seçilir
    [Arguments]    ${minPrice}    ${maxPrice}
    Input Text    ${txtMinProductPrice}    ${minPrice}
    Input Text    ${txtMaxProductPrice}    ${maxPrice}
    Wait Until Element Is Enabled    ${btnProductPrice}
    Click Element   ${btnProductPrice}


Hepsiburada.com sitesinde kulaklık için siyah renk seçilir
    Click Element   ${btnProductColor}


Hepsiburada.com sitesinde seçilen filtreler kontrol edilir
    [Arguments]    ${productBrand}    ${minPrice}    ${maxPrice}   ${productColor}
    Location Should Contain    ${productBrand}
    Location Should Contain    ${minPrice}
    Location Should Contain    ${maxPrice}
    Location Should Contain    ${productColor}


Hepsiburada.com sitesinde listelenen kulaklıklardan biri seçilir
    Click Element   ${btnSearchedProduct}


Hepsiburada.com sitesinde seçilen kulaklığın filtrelere uyduğu kontrol edilir
    [Arguments]    ${productBrand}    ${productColor}
    ${response} =   Get Text      ${txtSearchedProductName}
    ${productName}   Evaluate     "${response}".lower()
    ${productBrand}     Evaluate    "${productBrand}".lower()
    ${productColor}     Evaluate    "${productColor}".lower()
    Should Contain    ${productName}    ${productBrand}
    Should Contain    ${productName}    ${productColor}


Hepsiburada.com sitesinde seçilen kulaklık için yapılan yorumlara tıklanır
    Click Element   ${btnProductReviews}


Hepsiburada.com sitesinde kulaklık için yapılan yorumu faydalı buldum butonuna tıklanır
    Click Element   ${btnLikeProductReviews}


Hepsiburada.com sitesinde yorumu beğendikten sonra teşekkür ederiz yazısının çıktığı kontrol edilir
    Sleep    3s
    Wait Until Element Is Enabled    ${txtThanksYou}
    ${response} =   Get Text      ${txtThanksYou}
    Should Be Equal As Strings    ${response}     ${messageThankYou}

