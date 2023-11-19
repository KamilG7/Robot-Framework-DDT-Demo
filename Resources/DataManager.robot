*** Settings ***
Documentation    Layer needed to read data from external files
Library           ../CustomLib/CSVReader.py
Library           ../CustomLib/EmailRandomizer.py

*** Keywords ***
Get CSV Data
    [Arguments]    ${FilePath}
    ${Data} =    read csv    ${FilePath}
    [Return]    ${Data}

Get Random Email
    ${Random_email} =    email randomizer
    [Return]    ${Random_email}