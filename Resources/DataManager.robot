*** Settings ***
Documentation    Layer needed to read data from external files
Library           ../CustomLib/CSVReader.py

*** Keywords ***
Get CSV Data
    [Arguments]    ${FilePath}
    ${Data} =    read csv    ${FilePath}
    [Return]    ${Data}