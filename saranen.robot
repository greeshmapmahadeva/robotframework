*** Settings ***
Library    SeleniumLibrary

Suite Setup    Navigate to homepage
#Suite Teardown    Close All Browsers




*** Variables ***
${URL}        https://www.saranen.fi/

*** Keywords ***
Navigate to homepage
    Open Browser    ${URL}     Chrome
    Maximize Browser Window

Accept cookies
    [Arguments]    ${locator}
    Wait Until Element Is Visible    ${locator}    10s
    Click Element    ${locator}
    #Click Element    //div[@data-widget-type='custom_widget'])[1]

Select English language and Application login
    Click Element    //a[text()='In English']
    Click Element    //a[text()='Application login']

Select English flag
    Click Element    //img[@title="in English"]
    

Saranen login 
    [Arguments]    ${username}    ${password}
    Input Text    //input[@id="username"]     ${username}
    Input Password    //input[@type="password"]   ${password}
    Click Element    //input[@value="Login"]

Validate Successful login
    Element Should Be Visible    (//b[text()='Työpaikka'])


*** Test Cases ***
Login to saranen and Validate Successful Login 
     Accept cookies    //button[text()='Hyväksy kaikki evästeet']
     Select English language and Application login 
     Accept cookies    //input[@class="cookie-input approval"]
     Select English flag
     Saranen login    greeshmaperiyapa   Qwe2646@#141991
     Validate Successful login
     


