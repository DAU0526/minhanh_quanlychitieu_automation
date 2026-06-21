*** Settings ***
Library    SeleniumLibrary
Variables    ../environment_variables.yml
Variables    ../locators/LoginPageLocators.py

*** Keywords ***
Open Login Page
    Open Browser    http://localhost:5173/login    chrome
    Maximize Browser Window

Input Email
    [Arguments]    ${email}
    Input Text    ${EMAIL_INPUT}    ${email}

Input Password
    [Arguments]    ${password}
    SeleniumLibrary.Input Password    ${PASSWORD_INPUT}    ${password}

Click Login
    Click Button    ${LOGIN_BUTTON}

Login Successfully
    [Arguments]    ${email}    ${password}
    Input Email    ${email}
    Input Password    ${password}
    Click Login
    Sleep    5s

Verify Login Success
    Wait Until Page Does Not Contain Element    ${LOGIN_BUTTON}    timeout=5s

Verify Login Failed
    ${msg}=    Handle Alert
    Should Contain    ${msg}    Email hoặc mật khẩu không đúng

Verify Required Email Message
    Element Should Be Visible    ${EMAIL_INPUT}

Verify Required Password Message
    Element Should Be Visible    ${PASSWORD_INPUT}

Close Application
    Close Browser
