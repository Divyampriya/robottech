*** Settings ***
Documentation    To Validate the Login form
Library    SeleniumLibrary

*** Variables ***
${Browser}    Chrome
${Url}    https://rahulshettyacademy.com/loginpagePractise/
${Username}    rahulshettyacademy
${InvalidPassword}    1234
${ValidPassword}    learning
*** Keywords ***
open the browser with the url
    Create Webdriver    ${Browser}
    Go To    ${Url}
Close Browser session
    Close Browser




