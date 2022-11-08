*** Settings ***
Library    SeleniumLibrary

Suite Setup    Navigate to homepage
Suite Teardown    Close All Browsers



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

Validate Vehicle
    [Arguments]    ${vehicle1}    ${vehicle2}
    Select Checkbox   //input[@value="Car"]    
    Select Checkbox  //input[@value="Boat"] 
    Click Element    //*[@value='Show Me Alert']
    
    Capture Page Screenshot
Validate Sex
       [Arguments]    ${gender}
        Select Radio Button    gender   ${gender}


*** Test Cases ***
Validate Dropdown and Listbox
    Accept cookies     //a[text()="OK"]
    Validate Vehicle     I have a car     I have a boats
    Validate Sex    female