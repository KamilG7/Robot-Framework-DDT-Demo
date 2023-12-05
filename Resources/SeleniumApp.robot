*** Settings ***
Documentation           Script gruping pre-defined keywords into test steps
Resource                ./PO/Addresses.robot
Resource                ./PO/AddressesEdit.robot
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
    MyAccount.Enter Login Credentials              ${Credentials}
    MyAccount.Click "Log In"

Attempt Registration
    [Arguments]    ${RegistrationData}
    MyAccount.Enter Registration Data              ${RegistrationData}
    MyAccount.Click Registration Button

Verify Login Page Error Message
    [Arguments]    ${ExpectedErrorMessage}
    MyAccount.Verify Login Error List Loaded
    MyAccount.Verify Login Error Message           ${ExpectedErrorMessage}

Verify Registration Page Error Message
    [Arguments]    ${ExpectedErrorMessage}
    MyAccount.Verify Registration Error List Loaded
    MyAccount.Verify Registration Error Message    ${ExpectedErrorMessage}


Login With Invalid Credentials
    [Arguments]     ${InvalidLoginScenarios}
    FOR        ${LoginScenario}        IN       @{InvalidLoginScenarios}
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

Input Valid "Registration" Data
    MyAccount.Input Registration "Email"
    MyAccount.Input Registration "Password"

Press "Registration" Button
    MyAccount.Click Registration Button
    MyAccount.Verify User Logged In

Register With Invalid Credentials
    [Arguments]     ${InvalidRegisterScenarios}
    FOR        ${RegisterScenario}        IN      @{InvalidRegisterScenarios}
       run keyword and continue on failure        Navigate To Main Site
       run keyword and continue on failure        Navigate To My Account Page
       run keyword and continue on failure        Attempt Registration                       ${RegisterScenario}
       run keyword and continue on failure        Verify Registration Page Error Message     ${RegisterScenario}
    END

Navigate to "Addresses" Tab
    Addresses.Navigate to
    Addresses.Verify Page Loaded

Navigate To "Addresses Edit" page
    AddressesEdit.Navigate to
    AddressesEdit.Verify Page Loaded

Input "Address" from CSV file
    [Arguments]    ${AddressData}
    AddressesEdit.Input "First Name"          ${AddressData[0]}
    AddressesEdit.Input "Last Name"           ${AddressData[1]}
    AddressesEdit.Pick "Country"              ${AddressData[2]}
    AddressesEdit.Input "Street Address"      ${AddressData[3]}
    AddressesEdit.Input "Zip Code"            ${AddressData[4]}
    AddressesEdit.Input "Town"                ${AddressData[5]}
    AddressesEdit.Press "Save Address" Button

Verify Message Informing About Address Change
    Addresses.Verify Address Changed

Navigate To Shop and Check Products
    Shop.Navigate To
    Shop.Verify Page Loaded
    Check If Products Displays


