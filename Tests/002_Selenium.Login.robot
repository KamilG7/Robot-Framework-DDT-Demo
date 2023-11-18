*** Settings ***
Documentation           Test cases for "Main Site" app
Resource                ../Resources/SeleniumApp.robot
Resource                ../resources/Common.robot
Resource                ../resources/DataManager.robot
Resource                ../data/Variables.robot
Suite Setup
Test Setup              Common.Begin Web Test
Test Teardown           Common.End Web Test
Suite Teardown
# robot -d results tests/002_Selenium.Login.robot

*** Test Cases ***
Should See Valid Error Messages With Invalid Login Credentials
    [Documentation]     Failed login attempts should triger correct error messages
    [Tags]              id=1002    smoke    FreeAassessment
    ${InvalidLoginScenarios} =    DataManager.Get CSV Data      ${INVALID_LOGIN_CREDENTIALS_PATH}
    SeleniumApp.Login With Invalid Credentials      ${InvalidLoginScenarios}