*** Settings ***
Documentation           Test cases for "Login" page
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
Login With Valid Credentials
    [Documentation]     Login should suceed with valid credentials
    [Tags]      S_1003    TC_1006    Login
    SeleniumApp.Navigate To Main Site
    SeleniumApp.Navigate To My Account Page
    SeleniumApp.Input Valid Login Credentials
    SeleniumApp.Press "Log In" Button
    SeleniumApp.User "Log Out"


Should See Valid Error Messages With Invalid Login Credentials
    [Documentation]     Failed login attempts should triger correct error messages
    [Tags]      S_1004    TC_1007    TC_1008    TC_1009    TC_10010    TC_1011    TC_1012    Login
    ${InvalidLoginScenarios} =    DataManager.Get CSV Data      ${INVALID_LOGIN_CREDENTIALS_PATH}
    SeleniumApp.Login With Invalid Credentials                  ${InvalidLoginScenarios}