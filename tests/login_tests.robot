*** Settings ***
Library           SeleniumLibrary
Resource          ../resources/page_objects/LoginPage.robot

*** Test Cases ***
Valid Login
    [Documentation]    Test a valid login scenario.
    Open Login Page
    Enter Username    standard_user
    Enter Password    secret_sauce
    Click Login Button
    # Add assertions here to verify successful login
    [Teardown]    Close Browser
