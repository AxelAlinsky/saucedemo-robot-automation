*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN_URL}    https://www.saucedemo.com/
${USERNAME_FIELD}    id=user-name
${PASSWORD_FIELD}    id=password
${LOGIN_BUTTON}    id=login-button

*** Keywords ***
Open Login Page
    Open Browser    ${LOGIN_URL}    Chrome
    Maximize Browser Window

Enter Username
    [Arguments]    ${username}
    Input Text    ${USERNAME_FIELD}    ${username}

Enter Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_FIELD}    ${password}

Click Login Button
    Click Button    ${LOGIN_BUTTON}
