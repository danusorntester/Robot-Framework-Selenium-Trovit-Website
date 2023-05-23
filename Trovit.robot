*** Settings ***
Library    SeleniumLibrary
Library    XML

*** Variables ***
${browser}     Chrome
${URL}         https://th.trovit.com/baan/
${username}    basorigin32@gmail.com
${password}    Mynamebas123


*** Test Cases ***
Open Browser And Login
    Open Browsers
    Login
    Close Browser
Search bann from trovit
    Open Browsers
    Login
    Input Text                   id = what_d    กรุงเทพมหานคร
    Click Element                xpath = //*[@id="homes"]/div[2]/form/div[2]/button
    Sleep                        5s
    

*** Keywords ***
Open Browsers
    Open Browser                 ${URL}    ${browser}
    Sleep                        2s
Login
    Click Element                xpath = /html/body/div[2]/div/a[3]/div
    Input Text                   name = email    ${username}
    Input Text                   name = password    ${password}
    Click Element                xpath = /html/body/div[2]/div/form/button
    Sleep                        5s


    
