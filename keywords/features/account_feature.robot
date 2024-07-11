*** Settings ***
Resource    ../imports.robot

*** Keywords ***
Register new account
    [Arguments]    ${gmail}    ${password}    ${confirm_password}
    home_page.Verify Icon Account
    home_page.Click Icon Account
    account_page.Verify Sign Up Button
    account_page.Click Sign Up Button
    account_page.Verify Email Address Text Box
    account_page.Input Registration Email Address Text Box    ${gmail}
    account_page.Verify Password Text Box
    account_page.Input Registration Password Text Box    ${password}
    account_page.Verify Confirm Password Text Box
    account_page.Input Registration Confirm Password Text Box    ${confirm_password}
    account_page.Click Sign Up Button
    account_page.Verify OK Button
    account_page.Click OK Button
