*** Settings ***
Library                         SeleniumLibrary
Resource                        ../../data/Variables.robot

*** Keywords ***
Navigate To
    click link                              ${SHOP_BUTTON_LOCATOR}

Verify Page Loaded
    wait until page contains element        ${SHOP_LOADED_CONFIRMATION_LOCATOR}

Check If Products Displays
    wait until page contains element        ${SHOP_PRODUCT_LOCATOR}