*** Settings ***
Library                         SeleniumLibrary
Resource                        ../../data/Variables.robot

*** Keywords ***
Navigate to
    click link                              ${ADDRESSES_EDIT_TAB_LOCATOR}

Verify Page Loaded
    wait until page contains element        ${ADDRESSES_EDIT_CONFIRMATION_LOCATOR}

Input "First Name"
    [Arguments]    ${First_Name}
    input text                              ${ADDRESS_FIRST_NAME_LOCATOR}          ${First_Name}

Input "Last Name"
    [Arguments]    ${Last_Name}
    input text                              ${ADDRESS_LAST_NAME_LOCATOR}           ${Last_Name}

Pick "Country"
    [Arguments]    ${Country}
    click element                           ${ADDRESS_COUNTRY_LOCATOR}
    input text                              ${ADDRESS_COUNTRY_COMBO_LOCATOR}       ${Country}
    click element                           ${ADDRESS_COUNTRY_LIST_INDEX}
    sleep                                   1s


Input "Street Address"
    [Arguments]    ${Street_Address}
    input text                              ${ADDRESS_STREET_LOCATOR}              ${Street_Address}

Input "Zip Code"
    [Arguments]    ${Zip_code}
    click element                           ${ADDRESS_ZIP_CODE_LOCATOR}
    input text                              ${ADDRESS_ZIP_CODE_LOCATOR}            ${Zip_code}

Input "Town"
    [Arguments]    ${Town}
    click element                           ${ADDRESS_TOWN_LOCATOR}
    input text                              ${ADDRESS_TOWN_LOCATOR}                ${Town}

Press "Save Address" Button
    click button                            ${ADDRESS_SAVE_BUTTON_LOCATOR}




