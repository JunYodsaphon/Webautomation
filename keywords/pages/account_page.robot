*** Settings ***
Resource    ../imports.robot

*** Keywords ***
Verify Sign Up Button
    SeleniumLibrary.Wait Until Element Is Visible    ${account_locator.sign_up_button}

Click Sign Up Button    
    SeleniumLibrary.Click Element       ${account_locator.sign_up_button}

Verify Email Address Text Box
    SeleniumLibrary.Wait Until Element Is Visible    ${account_locator.username}

Input Registration Email Address Text Box
    [Arguments]    ${gmail}
    SeleniumLibrary.Input Text          ${account_locator.username}           ${gmail}

Verify Password Text Box
    SeleniumLibrary.Wait Until Element Is Visible    ${account_locator.password}

Input Registration Password Text Box
    [Arguments]    ${password}
    SeleniumLibrary.Input Text          ${account_locator.password}           ${password}

Verify Confirm Password Text Box
    SeleniumLibrary.Wait Until Element Is Visible    ${account_locator.confirmPassword}

Input Registration Confirm Password Text Box
    [Arguments]    ${confirm_password}
    SeleniumLibrary.Input Text          ${account_locator.confirm_password}    ${confirm_password}

Verify OK Button
    SeleniumLibrary.Wait Until Element Is Visible    ${account_locator.OK_button}

Click OK Button  
    SeleniumLibrary.Click Element       ${account_locator.OK_button}
    SeleniumLibrary.Wait Until Element Is Not Visible    ${account_locator.OK_button}

Verify Order
    SeleniumLibrary.Wait Until Element Is Visible    ${account_locator.btn_order}

The Order Should Be Createds
    SeleniumLibrary.Click Element       ${account_locator.btn_order}

Click Sign Up Button name
    [Arguments]    ${locator}
    SeleniumLibrary.Wait Until Element Is Visible    ${account_locator.sign_up_button}    
    SeleniumLibrary.Click Element       ${account_locator.sign_up_button}