*** Settings ***
Resource    ../resources/page_objects/LoginPage.resource
Resource    ../resources/page_objects/DashboardPage.resource
Resource    ../resources/common_keywords.resource

Test Setup       Open Login Page
Test Teardown    Close Application

*** Test Cases ***

TC_DASHBOARD_01 Verify Welcome Message
    Login With Valid Account
    Verify Welcome Message

TC_DASHBOARD_02 Verify Balance Card
    Login With Valid Account
    Verify Balance Card

TC_DASHBOARD_03 Verify Income Card
    Login With Valid Account
    Verify Income Card

TC_DASHBOARD_04 Verify Expense Card
    Login With Valid Account
    Verify Expense Card

TC_DASHBOARD_05 Verify Statistics Tab
    Login With Valid Account
    Verify Statistics Tab

TC_DASHBOARD_06 Verify Transaction Tab
    Login With Valid Account
    Verify Transaction Tab

TC_DASHBOARD_07 Verify Logout Button
    Login With Valid Account
    Verify Logout Button

TC_DASHBOARD_08 Verify Scroll Function
    Login With Valid Account
    Scroll To Bottom
    Sleep    2s
    Scroll To Top