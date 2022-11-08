*** Settings ***
Library     SeleniumLibrary

Suite Setup    Navigate to homepage

*** Variables ***
${URL}    https://www.tutorialspoint.com/selenium/selenium_automation_practice.htm
${browser}    Chrome
${locator1}    //*[text()='Selected Reading']
${locator2}    //*[text()='SEffective Resume Writing']



*** Keywords ***
Navigate to homepage
    Open Browser    ${URL}    ${browser}
    Maximize Browser Window

Accept cookies
    [Arguments]    ${locator}
    Click Element     ${locator}

Validate sex
    [Arguments]    ${Gender}
    #Select From List By Index    locator    ${Gender}
    #Select From List By Label    locator    ${Gender}
    #Select From List By Value    //input[@value="Male"]    ${Gender}
    Select Radio Button    sex    ${Gender}

Validate Years of experience
    [Arguments]    ${number}
    #Select From List By Value    //input[@value="5"]    ${number}
    Select Radio Button    exp    ${number}

Validate Profession
        [Arguments]    ${profession1}    ${profession2} 
        Select From List By Value   //input[@value="Manual Tester"]    ${profession1} 
        Select From List By Value    //input[@value="Automation Tester"]    ${profession2}

Validate Flavours of selenium
        [Arguments]       ${Flavours2}    ${Flavours3}
        #Select From List By Value    locator    ${Flavours1}
        Select From List By Value    //input[@value="Selenium IDE"]    ${Flavours2}
        Select From List By Value    //input[@value="Selenium Webdriver"]    ${Flavours3}



    


*** Test Cases ***

Validate Radiobutton and Checkbox
    Accept cookies    //p[text()='Consent']
    Run Keyword And Ignore Error      Scroll Element Into View    ${locator1}
    #Wait Until Element Is Visible    //*[text()='Sex:  ']
    Validate sex    Male
    Run Keyword And Ignore Error      Scroll Element Into View    ${locator2}
    Validate Years of experience    5
    Validate Profession    Manual Tester  Automation Tester
    Validate Flavours of selenium         Selenium IDE    Selenium Webdriver
    