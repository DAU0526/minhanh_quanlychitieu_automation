*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Add Transaction
    [Arguments]    ${name}    ${amount}
    Log    Add transaction

Delete Transaction
    Log    Delete transaction

Search Transaction
    [Arguments]    ${keyword}
    Log    Search transaction
