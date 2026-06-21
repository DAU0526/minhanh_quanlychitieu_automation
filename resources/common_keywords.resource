*** Settings ***
Resource    page_objects/LoginPage.resource

*** Keywords ***

Login With Valid Account
    Login Successfully    ${EMAIL}    ${PASSWORD}