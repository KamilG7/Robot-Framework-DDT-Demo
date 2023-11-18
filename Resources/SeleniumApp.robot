*** Settings ***
Resource                ./PO/Addresses.robot
Resource                ./PO/AddressesEdit.robot
Resource                ./PO/LoginRegistration.robot
Resource                ./PO/MainSite.robot
Resource                ./PO/MyAccount.robot
Resource                ./PO/Shop.robot
Resource                ../data/Variables.robot

*** Keywords ***


Navigate To My Account Page
    MainSite.Navigate To
    MainSite.Verify Page Loaded
    MyAccount.Navigate To
    MyAccount.Verify Page Loaded

Attempt Login
    [Arguments]    ${Credentials}
    MyAccount.Enter Login Credentials   ${Credentials}
    MyAccount.Click "Log In"

Verify Login Page Error Message
    [Arguments]    ${ExpectedErrorMessage}
    MyAccount.Verify Login Error Message    ${ExpectedErrorMessage}


Login With Invalid Credentials
    [Arguments]     ${InvalidLoginScenarios}
    :FOR        ${LoginScenario}        IN      &{InvalidLoginScenarios}
    \   Navigate To My Account Page
    \   Attempt Login       ${LoginScenario}
    \   Verify Login Page Error Message     ${LoginScenario}
