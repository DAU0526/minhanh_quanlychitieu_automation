*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Open Login Page
    Open Browser    ${URL}    ${BROWSER}

Input Email
    [Arguments]    ${email}
    Input Text    ${EMAIL_INPUT}    ${email}

Input Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_INPUT}    ${password}

Click Login
    Click Button    ${LOGIN_BUTTON}

Login System
    [Arguments]    ${email}    ${password}
    Input Email    ${email}
    Input Password    ${password}
    Click Login
