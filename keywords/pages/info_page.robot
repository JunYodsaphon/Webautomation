*** Settings ***
Resource    ../imports.robot

*** Keywords ***
Input Name Text Box
    [Arguments]    ${delivery_info.name}
    SeleniumLibrary.Wait Until Element Is Visible    ${info_locator.item_name}    
    SeleniumLibrary.Input Text          ${info_locator.item_name}    ${delivery_info.name}

Input Surname Text Box
    [Arguments]    ${delivery_info.surname}
    SeleniumLibrary.Wait Until Element Is Visible    ${info_locator.surName}
    SeleniumLibrary.Input Text          ${info_locator.surName}    ${delivery_info.surname}

Input Address Text Box
    [Arguments]    ${delivery_info.address}
    SeleniumLibrary.Wait Until Element Is Visible    ${info_locator.address}
    SeleniumLibrary.Input Text          ${info_locator.address}    ${delivery_info.address}

Input Phone Number Text Box
    [Arguments]    ${delivery_info.phone_number}
    SeleniumLibrary.Wait Until Element Is Visible    ${info_locator.phone_number}
    SeleniumLibrary.Input Text          ${info_locator.phone_number}    ${delivery_info.phone_number}

Click PAY Button
    SeleniumLibrary.Wait Until Element Is Visible    ${info_locator.PAY_button}
    SeleniumLibrary.Click Element       ${info_locator.PAY_button}

Click Next Button
    SeleniumLibrary.Wait Until Element Is Visible    ${info_locator.Next_button}
    SeleniumLibrary.Click Element       ${info_locator.Next_button}