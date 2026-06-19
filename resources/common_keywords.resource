*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Open Application
    Open Browser    ${URL}    ${BROWSER}

Close Application
    Close Browser
