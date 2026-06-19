*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Open Login Page
    Open Browser    ${URL}    ${BROWSER}

Input Username
    [Arguments]    ${username}
    Log    Input username

Input Password
    [Arguments]    ${password}
    Log    Input password

Click Login
    Log    Click login

Login System
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Password    ${password}
    Click Login
