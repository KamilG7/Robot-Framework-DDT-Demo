*** Settings ***
Library                         SeleniumLibrary
Resource                        ../../data/Variables.robot

*** Keywords ***
Navigate To
    click link      ${MY_ACCOUNT_BUTTON_LOCATOR}

Verify Page Loaded
    wait until page contains element        ${MY_ACCOUNT_LOADED_CONFIRMATION_LOCATOR}

Input Login "Email"
    input text                   ${LOGIN_EMAIL_LOCATOR}       ${USER_EMAIL}

Input Login "Password"
    input text                   ${LOGIN_PASSWORD_LOCATOR}    ${USER_PASSWORD}

Click "Log In"
    click button                 ${SIGN_IN_BUTTON_LOCATOR}

Verify User Logged In
    wait until page contains element        ${LOG_OUT_BUTTON_LOCATOR}

Enter Login Credentials
    [Arguments]    ${Credentials}
    run keyword if    not '${Credentials[0]}'=='#BLANK'      input text       ${LOGIN_EMAIL_LOCATOR}    ${Credentials[0]}
    log     ${Credentials[0]}
    run keyword if    not '${Credentials[1]}'=='#BLANK'      input text    ${LOGIN_PASSWORD_LOCATOR}    ${Credentials[1]}
    log     ${Credentials[1]}
    Sleep                   1s


Verify Login Error Message
    [Arguments]    ${ExpectedErrorMessage}
    element should contain       ${LOGIN_ERROR_LOCATOR}     ${ExpectedErrorMessage[2]}

Click "Log Out" Button
    click button                 ${LOG_OUT_BUTTON_LOCATOR}


