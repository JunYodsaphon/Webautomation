*** Settings ***
Resource    ../imports.robot

*** Keywords ***
Click Sign Up Button
    SeleniumLibrary.Click Element       ${account_locator.sign_up_button}

The Order Should Be Createds
    SeleniumLibrary.Click Element       ${account_locator.btn_order}

Input Username Text Box
    [Arguments]    ${gmail}
    SeleniumLibrary.Input Text          ${account_locator.username}           ${gmail}

Input Password Text Box
    [Arguments]    ${password}
    SeleniumLibrary.Input Text          ${account_locator.password}           ${password}

Input Confirm Password Text Box
    [Arguments]    ${confirmPassword}
    SeleniumLibrary.Input Text          ${account_locator.confirmPassword}    ${confirmPassword}

Click OK Button
    common.Click Button    OK

Click PAY Button
    common.Click Button    PAY       

Click Next Button
    common.Click Button    Next