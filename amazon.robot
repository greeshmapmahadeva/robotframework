*** Settings ***
Library  SeleniumLibrary
Resource    myrobo.robot

*** Variables ***
${URL}    https://www.googleadservices.com/pagead/aclk?sa=L&ai=DChcSEwj--5vdkOP6AhWKBaIDHU5UD9wYABABGgJsZQ&ohost=www.google.com&cid=CAESauD2oO3AjUp3xaabGAZ7gxSmsdFlvce-2WCqHYxU3jIR5W0olx2lf3a42Pj4Q-hdCgQtx4y5YZZam3zD5kuRsOds51wd1CxeNfDOmucR_S0VwhVF5mMKNBPumhDPGcDSM_pRzFPhU-9BtkQ&sig=AOD64_3bdYCwcsgywzYpdo3w74vMWpw9eg&q&adurl&ved=2ahUKEwjspJTdkOP6AhW6DRAIHQQxCkQQ0Qx6BAgIEAE

*** Keywords ***

Validate cookies is present
    Wait Until Element Is Visible     //input[@id="sp-cc-accept"]   10s
    Page Should Contain Element    //input[@id="sp-cc-accept"]
    Sleep    5s
    Click Element    //input[@id="sp-cc-accept"]

*** Test Cases ***
Goto Amazon website and click a link
       Open Browser    ${URL}    Chrome
       Maximize Browser Window
       Capture Page Screenshot
       Validate cookies is present