*** Settings ***
Library    SeleniumLibrary
Variables    ../locators/DashboardPageLocators.py

*** Keywords ***

Verify Welcome Message
    Element Should Be Visible    ${WELCOME_TEXT}

Verify Balance Card
    Element Should Be Visible    ${BALANCE_CARD}

Verify Income Card
    Element Should Be Visible    ${INCOME_CARD}

Verify Expense Card
    Element Should Be Visible    ${EXPENSE_CARD}

Verify Statistics Tab
    Element Should Be Visible    ${STATISTICS_TAB}

Verify Transaction Tab
    Element Should Be Visible    ${TRANSACTION_TAB}

Verify Logout Button
    Element Should Be Visible    ${LOGOUT_BUTTON}
