*** Settings ***
Library                         SeleniumLibrary
Resource                        ../../data/Variables.robot
Variables                       ../../CustomLib/EmailRandomizer.py

*** Variables ***
${RANDOM_EMAIL} =     ${random_py}


*** Keywords ***
Navigate To
    click link      ${MY_ACCOUNT_BUTTON_LOCATOR}

Verify Page Loaded
    wait until page contains element        ${MY_ACCOUNT_LOADED_CONFIRMATION_LOCATOR}

Input Login "Email"
    input text                   ${LOGIN_EMAIL_LOCATOR}       ${RANDOM_EMAIL}

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

Verify Registration Error Message
    [Arguments]    ${ExpectedErrorMessage}
    element should contain       ${REGISTRATION_ERROR_LOCATOR}     ${ExpectedErrorMessage[2]}

Click "Log Out" Button
    click link                 ${LOG_OUT_BUTTON_LOCATOR}


Input Registration "Email"
    input text                   ${REGISTRATION_EMAIL_LOCATOR}       ${RANDOM_EMAIL}

Input Registration "Password"
    input text                   ${REGISTRATION_PASSWORD_LOCATOR}    ${USER_PASSWORD}

Click Registration Button
    click button                 ${REGISTRATION_BUTTON_LOCATOR}

Enter Registration Data
    [Arguments]    ${RegistrationData}
    run keyword if    not '${RegistrationData[0]}'=='#BLANK'      input text       ${REGISTRATION_EMAIL_LOCATOR}    ${RegistrationData[0]}
    log     ${RegistrationData[0]}
    run keyword if    not '${RegistrationData[1]}'=='#BLANK'      input text    ${registration_password_locator}    ${RegistrationData[1]}
    log     ${RegistrationData[1]}
    Sleep                   1s


Verify Login Error List Loaded
    wait until page contains element        ${LOGIN_ERROR_LOCATOR}

Verify Registration Error List Loaded
    wait until page contains element        ${REGISTRATION_ERROR_LOCATOR}

