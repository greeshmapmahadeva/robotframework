*** Settings ***
Library  SeleniumLibrary
Resource    myrobo.robot

*** Variables ***
${URL}  https://awacademy.fi/

*** Keywords ***
Validate cookies is present
  Wait Until Element Is Visible    //button[@id="onetrust-accept-btn-handler"]    10s
  Page Should Contain Element    //button[@id="onetrust-accept-btn-handler"]
  Sleep    5s
  Click Element    //button[@id="onetrust-accept-btn-handler"]

Close all my browsers
  Close all my browsers



  
*** Test Cases ***
Goto awacademy and click on a link1
  Open Browser      ${URL}      Chrome
  Maximize Browser Window
  Capture Page Screenshot
  Validate cookies is present
  Click Link   //a[text()='Seuraava askel urallasi']
  Close All Browsers