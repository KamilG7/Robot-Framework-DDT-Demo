*** Settings ***
Documentation           Test cases for "Main Site" app
Resource                ../Resources/SeleniumApp.robot
Resource                ../resources/Common.robot
Resource                ../data/Variables.robot
Resource                ../resources/DataManager.robot
Suite Setup
Test Setup              Common.Begin Web Test
Test Teardown           Common.End Web Test
Suite Teardown
# robot -d results tests/001_Selenium.Registration.robot

*** Test Cases ***
Registration With Valid Data
    [Documentation]     Registration should suceed with valid credentials
    [Tags]      S_1001    TC_1001    Registration
    SeleniumApp.Navigate To Main Site
    SeleniumApp.Navigate To My Account Page
    SeleniumApp.Input Valid "Registration" Data
    SeleniumApp.Press "Registration" Button
    SeleniumApp.User "Log Out"

Should See Valid Error Messages With Invalid Registration Data
    [Documentation]     Failed registration attempts should triger correct error messages
    [Tags]      S_1002    TC_1002    TC_1003    TC_1004    TC_1005    Registration
    ${InvalidRegisterScenarios} =    DataManager.Get CSV Data      ${INVALID_REGISTRATION_DATA_PATH}
    SeleniumApp.Register With Invalid Credentials                  ${InvalidRegisterScenarios}

