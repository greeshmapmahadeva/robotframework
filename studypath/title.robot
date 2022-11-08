*** Settings ***
Library    SeleniumLibrary


Suite Setup     Navigate to homepage
Suite Teardown    Close All Browsers


*** Variables ***
${URL}    https://www.google.com
${browser}    Chrome

#${expected_title}    google

*** Keywords ***
Navigate to homepage
    Open Browser    ${URL}    ${browser} 
    Maximize Browser Window


*** Test Cases ***

Validate title of the website
   ${actual_title}=     Get Title   
  
   
   ${expected_title} =    Set Variable    google
    Should Be Equal As Strings    ${actual_title}    ${expected_title} 
    