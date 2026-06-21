*** Settings ***
Resource    page_objects/LoginPage.resource

*** Keywords ***

Login With Valid Account
    Login Successfully    ${EMAIL}    ${PASSWORD}

Scroll To Bottom
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)

Scroll To Top
    Execute Javascript    window.scrollTo(0,0)