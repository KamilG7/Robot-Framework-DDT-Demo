*** Settings ***
Documentation                   Common file for opening and closing brawser before/after TC
Library                         SeleniumLibrary
Resource                        ../data/Variables.robot

*** Variables ***


*** Keywords ***
Begin Web Test
    open browser                about:blank     ${BROWSER}
    maximize browser window

End Web Test
    close all browsers