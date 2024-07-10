*** Settings ***
Resource    ../imports.robot

*** Keywords ***
Input Name Text Box
    SeleniumLibrary.Input Text          ${account_locator.item_name}    ${delivery_info.name}

Input Surname Text Box
    SeleniumLibrary.Input Text          ${account_locator.surName}    ${delivery_info.surname}

Input Address Text Box
    SeleniumLibrary.Input Text          ${account_locator.address}    ${delivery_info.address}

Input Phone Number Text Box
    SeleniumLibrary.Input Text          ${account_locator.phone_number}    ${delivery_info.phone_number}