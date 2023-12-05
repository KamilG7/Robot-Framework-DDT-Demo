*** Settings ***
Documentation           Test cases for "Shop" tab
Resource                ../Resources/SeleniumApp.robot
Resource                ../resources/Common.robot
Resource                ../data/Variables.robot
Suite Setup
Test Setup              Common.Begin Web Test
Test Teardown           Common.End Web Test
Suite Teardown
# robot -d results tests/003_Selenium.Shop.robot

*** Test Cases ***
User should be able to see aviable products
    [Documentation]     User should have access to shop and see aviable products
    [Tags]      S_1006  TC_1014    Shop
    SeleniumApp.Navigate To Main Site
    SeleniumApp.Navigate To My Account Page
    SeleniumApp.Input Valid Login Credentials
    SeleniumApp.Press "Log In" Button
    SeleniumApp.Navigate To Shop and Check Products

