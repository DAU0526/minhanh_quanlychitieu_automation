*** Settings ***
Resource    ../resources/page_objects/LoginPage.resource

*** Test Cases ***
Login With Valid Account
    Open Login Page
    Login Successfully    admin@gmail.com    123456
