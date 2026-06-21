*** Settings ***
Library    SeleniumLibrary
Variables    ../locators/TransactionPageLocators.py

*** Keywords ***

Add Income Transaction
    Input Text    ${TRANSACTION_NAME_INPUT}    Luong test
    Input Text    ${AMOUNT_INPUT}    1000000
    Select From List By Label    ${TYPE_DROPDOWN}    Thu nhập (+)
    Click Button    ${SAVE_BUTTON}

Add Expense Transaction
    Input Text    ${TRANSACTION_NAME_INPUT}    An trua
    Input Text    ${AMOUNT_INPUT}    50000
    Select From List By Label    ${TYPE_DROPDOWN}    Chi tiêu (-)
    Click Button    ${SAVE_BUTTON}

Verify Download Sample Button
    Element Should Be Visible    ${DOWNLOAD_SAMPLE_BUTTON}

Verify Import CSV Button
    Element Should Be Visible    ${IMPORT_CSV_BUTTON}

Verify Transaction History
    Element Should Be Visible    ${TRANSACTION_HISTORY}

Verify Save Button
    Element Should Be Visible    ${SAVE_BUTTON}

Add Transaction
    [Arguments]    ${name}    ${amount}

    Input Text    ${NAME_INPUT}      ${name}
    Input Text    ${AMOUNT_INPUT}    ${amount}
    Click Element    ${SAVE_BUTTON}

Delete Transaction
    Log    Delete transaction

Search Transaction
    [Arguments]    ${keyword}
    Log    Search transaction ${keyword}
