*** Settings ***
Resource    ./imports.robot

*** Keywords ***
Clear all browser
    SeleniumLibrary.Close All Browsers

Enter website https://training-platform.doppio-tech.com
    SeleniumLibrary.Open Browser        ${url}         browser=chrome
    SeleniumLibrary.Maximize Browser Window
    BuiltIn.Sleep      2s



