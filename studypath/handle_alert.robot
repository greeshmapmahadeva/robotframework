*** Settings ***
Library    SeleniumLibrary

Suite Setup    Navigate to homepage
#Suite Teardown    Close All Browsers



*** Variables ***
${URL}    https://only-testing-blog.blogspot.com/2014/01/textbox.html
${Browser}    Chrome


*** Keywords ***
Navigate to homepage
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    
Accept cookies
    [Arguments]    ${locator}
    Click Element    ${locator}

Click on confirmation button on webpage and handle alert
    Click Element    //button[text()='Show Me Confirmation']
    Alert Should Be Present      Press 'OK' or 'Cancel' button!     LEAVE
    Handle Alert     ACCEPT 

Validate Successful Confirmation after handling Alerts
    Element Should Be Visible    //div[text()="You pressed OK!"]


*** Test Cases ***
Validate Alert Confirmation on Page
    Accept cookies     //a[text()="OK"]
    Click on confirmation button on webpage and handle alert
    Validate Successful Confirmation after handling Alerts
    
