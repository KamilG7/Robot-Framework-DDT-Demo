*** Settings ***
Library                         SeleniumLibrary
Resource                        ../../data/Variables.robot

*** Keywords ***
Navigate To
    go to                                   ${URL_HOME_PAGE}

Verify Page Loaded
    wait until page contains element        ${MAIN_SITE_LOADED_CONFIRMATION_LOCATOR}

