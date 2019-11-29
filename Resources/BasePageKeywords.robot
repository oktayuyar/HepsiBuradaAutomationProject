*** Settings ***
Library           Selenium2Library

*** Variables ***
${BROWSER}        Chrome
${DELAY}          0
${URL}  https://hepsiburada.com/


*** Keywords ***
Hepsiburada.com sitesi açılır
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Set Browser Implicit Wait   20