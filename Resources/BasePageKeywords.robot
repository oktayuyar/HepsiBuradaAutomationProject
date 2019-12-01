*** Settings ***
Library           Selenium2Library


*** Variables ***
${BROWSER}        Chrome
${BROWSER PATH}   webDrivers/chromedriver
${DELAY}          0
${URL}  https://www.hepsiburada.com/


*** Keywords ***
Hepsiburada.com sitesi açılır
    Open Browser    ${URL}    ${BROWSER}    ${BROWSER PATH}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Set Browser Implicit Wait   20


Test sonlandırılır
    Close Browser
