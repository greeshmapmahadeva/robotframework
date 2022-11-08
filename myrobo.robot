*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${URL}    https://awacademy.fi/

*** Keywords ***
Validate cookies is present
    Wait Until Element Is Visible    //button[@id='onetrust-accept-btn-handler']    10s
    Page Should Contain Element    //button[@id='onetrust-accept-btn-handler']
    Sleep    5s
    Click Element    //button[@id='onetrust-accept-btn-handler']

Close all my browsers
    Close All Browsers

*** Test Cases ***


Goto AW website and click on a link
    Open Browser  ${URL}  Chrome
    Maximize Browser Window
    Click Element    //a[@class='MuiTypography-root MuiLink-root MuiLink-underlineHover jss1 jss2 MuiTypography-colorSecondary']
    Capture Page Screenshot
    Validate cookies is present
    Close all my browsers




