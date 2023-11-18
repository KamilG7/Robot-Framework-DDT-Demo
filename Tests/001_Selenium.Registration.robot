*** Settings ***
Documentation           Test cases for "Main Site" app
Resource                ../Resources/SeleniumApp.robot
Resource                ../resources/Common.robot
Resource                ../data/Variables.robot
Suite Setup
Test Setup              Common.Begin Web Test
Test Teardown           Common.End Web Test
Suite Teardown
# robot -d results tests/001_Selenium.Registration.robot