*** Settings ***
Library    SeleniumLibrary
Resource    ../PageObjects/Locators.robot

*** Keywords ***
Open my Browser
    [Arguments]    ${URL}    ${Browser}
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window

Accept Cookies
    Select Frame    //*[@id='gdpr-consent-notice']
   Wait Until Element Is Visible    //*[@id='save']    10s
   Sleep    3s
    Click Element    //*[@id='save']
    Unselect Frame

Enter username
    [Arguments]    ${username}
    Input Text    ${txt_loginUserName}        ${username}
    

Enter password
    [Arguments]    ${password}
    Input Password    //input[@name="password"]   ${password}

Click SignIn
    Click Button    //input[@value="Submit"]

Verify Successful Login
    Title Should Be      Login: Mercury Tours
