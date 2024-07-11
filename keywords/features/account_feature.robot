*** Settings ***
Resource    ../imports.robot

*** Keywords ***
Register new account
    [Arguments]    ${gmail}    ${password}    ${confirm_password}
    home_page.Click Icon Account
    account_page.Click Sign Up Button
    account_page.Input Registration Email Address Text Box    ${gmail}
    account_page.Input Registration Password Text Box    ${password}
    account_page.Input Registration Confirm Password Text Box    ${confirm_password}
    account_page.Click Sign Up Button
    account_page.Click OK Button

Fill Delivery info field 
    BuiltIn.Sleep    3s

Navigate to my order page
    BuiltIn.Sleep      10s

The order should be created
    account_page.The order should be createds
    BuiltIn.Sleep      5s
