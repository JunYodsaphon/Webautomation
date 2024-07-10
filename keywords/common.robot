*** Settings ***
Resource    ./imports.robot

*** Keywords ***
Clear all browser
    SeleniumLibrary.Close All Browsers

Enter website https://training-platform.doppio-tech.com
    SeleniumLibrary.Open Browser        ${url}         browser=chrome
    SeleniumLibrary.Maximize Browser Window
    BuiltIn.Sleep      2s

Click Button
    [Arguments]    ${text}
    SeleniumLibrary.Click Element       xpath=//button[span[text()="${text}"]]



