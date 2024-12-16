*** Settings ***
Documentation    To Validate the Login form
Library    SeleniumLibrary
Test Setup    open the browser with the url
Test Teardown    Close Browser session
Resource    Resource.robot

*** Variables ***
${Error_Mesg_login}    css:.alert-danger
${Shop_homepage}    css:.nav-link
*** Test Cases ***
Validate UnSuccessful Login
    Fill the login form    ${Username}    ${InvalidPassword}
    wait until it checks and display error message    ${Error_Mesg_login}
    verify error message is correct
Validate card
    Fill the login form    ${Username}    ${ValidPassword}
    wait until it checks and display error message     ${Shop_homepage}
*** Keywords ***
open the browser with the url
    Create Webdriver    ${Browser}
    Go To    ${Url}
Fill the login form
    [arguments]    ${Username}    ${Password}
    Input Text    id:username    ${Username}
    Input Text    id:password    ${Password}
    Click Button    id:signInBtn
wait until it checks and display error message
    [arguments]    ${element}
    Wait Until Element Is Visible    ${element}
verify error message is correct
    Element Text Should Be    ${Error_Mesg_Login}    Incorrect username/password.
    



