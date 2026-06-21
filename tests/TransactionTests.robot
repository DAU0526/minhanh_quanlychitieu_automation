*** Settings ***
Resource    ../resources/page_objects/LoginPage.resource
Resource    ../resources/page_objects/TransactionPage.resource

Test Setup       Open Login Page
Test Teardown    Close Application

*** Test Cases ***

TC_TRANSACTION_01 Verify Download Sample Button
    Login Successfully    minhanh1@gmail.com    12345678
    Verify Download Sample Button

TC_TRANSACTION_02 Verify Import CSV Button
    Login Successfully    minhanh1@gmail.com    12345678
    Verify Import CSV Button

TC_TRANSACTION_03 Verify Transaction History
    Login Successfully    minhanh1@gmail.com    12345678
    Verify Transaction History

TC_TRANSACTION_04 Verify Save Button
    Login Successfully    minhanh1@gmail.com    12345678
    Verify Save Button

TC_TRANSACTION_05 Add Income Transaction
    Login Successfully    minhanh1@gmail.com    12345678
    Add Income Transaction

TC_TRANSACTION_06 Validate Empty Name
    Login Successfully    minhanh1@gmail.com    12345678
    Input Text    ${AMOUNT_INPUT}    50000
    Click Element    ${SAVE_BUTTON}

TC_TRANSACTION_07 Validate Empty Amount
    Login Successfully    minhanh1@gmail.com    12345678
    Input Text    ${NAME_INPUT}    Tiền ăn trưa
    Click Element    ${SAVE_BUTTON}

TC_TRANSACTION_08 Validate Negative Amount
    Login Successfully    minhanh1@gmail.com    12345678
    Input Text    ${NAME_INPUT}    Test
    Input Text    ${AMOUNT_INPUT}    -1000
    Click Element    ${SAVE_BUTTON}
