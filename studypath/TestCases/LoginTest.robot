*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/LoginKeywords.robot

*** Variables ***
${browser}    chrome
${URL}    https://demo.guru99.com/test/newtours/
${username}    tutorial
${password}    tutorial

${Accept_cookies}    //button[@id='save']




*** Test Cases ***
LoginTest
    [Tags]    SmokeTesting
    Open my Browser    ${URL}     ${Browser}
    Accept cookies 
    Enter username    ${username} 
    Enter password    ${password} 
    Click SignIn
    Sleep    5s
    Verify Successful Login

RegisterTest
    [Tags]    Regression

ProductTest1
    [Tags]    SmokeTesting

ProductTest2


ProductTest3

ShoppingTest