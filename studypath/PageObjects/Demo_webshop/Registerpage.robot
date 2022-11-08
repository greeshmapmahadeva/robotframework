*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${Browser}    chrome
${URL}    https://demowebshop.tricentis.com/


*** Keywords ***
Open my browser
    [Arguments]    ${URL}    ${Browser}
    Open Browser    ${URL}     ${Browser}
    Maximize Browser Window

Click Register
    Click Element    //a[text()='Register']

Validate sex
    [Arguments]    ${gender}
    Select Radio Button    sex    ${gender}

*** Test Cases ***
    Open Browser    ${URL}    ${Browser}
    Click Register   
    Validate sex      Female
    
