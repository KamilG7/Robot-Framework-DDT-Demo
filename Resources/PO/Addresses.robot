*** Settings ***
Library                         SeleniumLibrary
Resource                        ../../data/Variables.robot

*** Keywords ***
Navigate to
    click link    ${ADDRESSES_TAB_LOCATOR}

Verify Page Loaded
    wait until page contains element        ${ADDRESSES_TAB_CONFIRMATION_LOCATOR}

Verify Address Changed
    element should contain       ${ADDRES_CHANGED_MESSAGE_LOCATOR}      ${ADDRESS_CHANGED_MESSAGE}