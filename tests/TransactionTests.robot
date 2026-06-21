*** Settings ***
Resource    ../resources/page_objects/LoginPage.resource
Resource    ../resources/page_objects/TransactionPage.resource
Resource    ../resources/common_keywords.resource

Test Setup       Open Login Page
Test Teardown    Close Application

*** Test Cases ***

TC_TRANSACTION_01 Verify Download Sample Button
    Login With Valid Account
    Verify Download Sample Button

TC_TRANSACTION_02 Verify Import CSV Button
    Login With Valid Account
    Verify Import CSV Button

TC_TRANSACTION_03 Verify Transaction History
    Login With Valid Account
    Verify Transaction History

TC_TRANSACTION_04 Verify Save Button
    Login With Valid Account
    Verify Save Button

TC_TRANSACTION_05 Add Income Transaction
    Login With Valid Account
    Add Income Transaction

TC_TRANSACTION_06 Validate Empty Name
    Login With Valid Account
    Input Text    ${AMOUNT_INPUT}    50000
    Click Element    ${SAVE_BUTTON}

TC_TRANSACTION_07 Validate Empty Amount
    Login With Valid Account
    Input Text    ${NAME_INPUT}    Tiền ăn trưa
    Click Element    ${SAVE_BUTTON}

TC_TRANSACTION_08 Validate Negative Amount
    Login With Valid Account
    Input Text    ${NAME_INPUT}    Test
    Input Text    ${AMOUNT_INPUT}    -1000
    Click Element    ${SAVE_BUTTON}
