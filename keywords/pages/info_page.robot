*** Settings ***
Resource    ../imports.robot

*** Keywords ***
Verify Name Text Box
    SeleniumLibrary.Wait Until Element Is Visible    ${info_locator.ture_name}

Input Name Text Box
    [Arguments]    ${full_name}=yodsaphon
    SeleniumLibrary.Input Text    ${info_locator.ture_name}    ${full_name}

Verify Surname Text Box
    SeleniumLibrary.Wait Until Element Is Visible    ${info_locator.surName}

Input Surname Text Box
    [Arguments]    ${surname}
    SeleniumLibrary.Input Text    ${info_locator.surName}    ${surname}

Verify Address Text Box
    SeleniumLibrary.Wait Until Element Is Visible    ${info_locator.address}

Input Address Text Box
    [Arguments]    ${address}
    SeleniumLibrary.Input Text    ${info_locator.address}    ${address}

Verify Phone Number Text Box
    SeleniumLibrary.Wait Until Element Is Visible    ${info_locator.phone_number}

Input Phone Number Text Box
    [Arguments]    ${phone_number}
    SeleniumLibrary.Input Text          ${info_locator.phone_number}    ${phone_number}

Verify PAY Button
    SeleniumLibrary.Wait Until Element Is Visible    ${info_locator.PAY_button}

Click PAY Button
    SeleniumLibrary.Click Element       ${info_locator.PAY_button}

Verify Next Button
    SeleniumLibrary.Wait Until Element Is Visible    ${info_locator.Next_button}

Click Next Button
    SeleniumLibrary.Click Element       ${info_locator.Next_button}
