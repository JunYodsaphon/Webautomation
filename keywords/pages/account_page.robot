*** Settings ***
Resource    ../imports.robot

*** Keywords ***
Click Sign Up Button
    SeleniumLibrary.Wait Until Element Is Visible    ${account_locator.sign_up_button}    
    SeleniumLibrary.Click Element       ${account_locator.sign_up_button}

Input Registration Email Address Text Box
    [Arguments]    ${gmail}
    SeleniumLibrary.Wait Until Element Is Visible    ${account_locator.username}
    SeleniumLibrary.Input Text          ${account_locator.username}           ${gmail}

Input Registration Password Text Box
    [Arguments]    ${password}
    SeleniumLibrary.Wait Until Element Is Visible    ${account_locator.password}
    SeleniumLibrary.Input Text          ${account_locator.password}           ${password}

Input Registration Confirm Password Text Box
    [Arguments]    ${confirm_password}
    SeleniumLibrary.Wait Until Element Is Visible    ${account_locator.confirmPassword}
    SeleniumLibrary.Input Text          ${account_locator.confirm_password}    ${confirm_password}

Click OK Button
    SeleniumLibrary.Wait Until Element Is Visible    ${account_locator.OK_button}   
    SeleniumLibrary.Click Element       ${account_locator.OK_button}

The Order Should Be Createds
    SeleniumLibrary.Wait Until Element Is Visible    ${account_locator.btn_order}
    SeleniumLibrary.Click Element       ${account_locator.btn_order}      