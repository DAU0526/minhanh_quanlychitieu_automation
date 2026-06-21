*** Settings ***
Resource    ../resources/page_objects/LoginPage.resource
Resource    ../resources/page_objects/DashboardPage.resource

Test Setup    Open Login Page
Test Teardown    Close Application

*** Test Cases ***

TC_DASHBOARD_01 Verify Welcome Message
    Login Successfully    minhanh1@gmail.com    12345678
    Verify Welcome Message

TC_DASHBOARD_02 Verify Balance Card
    Login Successfully    minhanh1@gmail.com    12345678
    Verify Balance Card

TC_DASHBOARD_03 Verify Income Card
    Login Successfully    minhanh1@gmail.com    12345678
    Verify Income Card

TC_DASHBOARD_04 Verify Expense Card
    Login Successfully    minhanh1@gmail.com    12345678
    Verify Expense Card

TC_DASHBOARD_05 Verify Statistics Tab
    Login Successfully    minhanh1@gmail.com    12345678
    Verify Statistics Tab

TC_DASHBOARD_06 Verify Transaction Tab
    Login Successfully    minhanh1@gmail.com    12345678
    Verify Transaction Tab

TC_DASHBOARD_07 Verify Logout Button
    Login Successfully    minhanh1@gmail.com    12345678
    Verify Logout Button
