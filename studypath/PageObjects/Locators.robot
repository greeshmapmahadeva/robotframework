*** Settings ***
Library    SeleniumLibrary

*** Variables ***

#Login Page Elements
${txt_loginUserName}    name:userName
${txt_loginPassword}    //input[@name="password"]
${btn_signIn}        //input[@value="Submit"]
