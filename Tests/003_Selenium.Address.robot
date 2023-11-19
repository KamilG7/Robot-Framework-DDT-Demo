*** Settings ***
Documentation           Test cases for "Main Site" app
Resource                ../Resources/SeleniumApp.robot
Resource                ../resources/Common.robot
Resource                ../data/Variables.robot
Suite Setup
Test Setup              Common.Begin Web Test
Test Teardown           Common.End Web Test
Suite Teardown
# robot -d results tests/003_Selenium.Address.robot

*** Test Cases ***
User should be able to modify address when logged in
    [Documentation]     User should have access to address panel and posibility to changed it when logged in
    [Tags]      S_1005  TC_1013    Address
    SeleniumApp.Navigate To Main Site
    SeleniumApp.Navigate To My Account Page
    SeleniumApp.Input Valid Login Credentials
    SeleniumApp.Press "Log In" Button
    SeleniumApp.Navigate to "Addresses" Tab
    SeleniumApp.Navigate To "Addresses Edit" page
    ${Address_Data} =    DataManager.Get CSV Data       ${ADDRESS_DATA_PATH}
    SeleniumApp.Input "Address" from CSV file           ${Address_Data}
    SeleniumApp.Verify Message Informing About Address Change
    SeleniumApp.User "Log Out"
