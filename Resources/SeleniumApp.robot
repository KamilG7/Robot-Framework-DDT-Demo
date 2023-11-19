*** Settings ***
Resource                ./PO/Addresses.robot
Resource                ./PO/AddressesEdit.robot
Resource                ./PO/LoginRegistration.robot
Resource                ./PO/MainSite.robot
Resource                ./PO/MyAccount.robot
Resource                ./PO/Shop.robot
Resource                ../data/Variables.robot

*** Keywords ***
Navigate To Main Site
    MainSite.Navigate To
    MainSite.Verify Page Loaded

Navigate To My Account Page
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
    FOR        ${LoginScenario}        IN      @{InvalidLoginScenarios}
       run keyword and continue on failure      Navigate To Main Site
       run keyword and continue on failure      Navigate To My Account Page
       run keyword and continue on failure      Attempt Login       ${LoginScenario}
       run keyword and continue on failure      Verify Login Page Error Message     ${LoginScenario}
    END

Input Valid Login Credentials
    MyAccount.Input Login "Email"
    MyAccount.Input Login "Password"

Press "Log In" Button
    MyAccount.Click "Log In"
    MyAccount.Verify User Logged In

User "Log Out"
    MyAccount.Click "Log Out" Button
    MyAccount.Verify Page Loaded
