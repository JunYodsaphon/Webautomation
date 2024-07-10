*** Settings ***
Resource    ../imports.robot

*** Keywords ***
Click_sign_up_button
    SeleniumLibrary.Click Element       ${account_locator.sign_up_button}

Click_icon_account
    SeleniumLibrary.Click Element       ${account_locator.icon_account}

The_order should be created
    SeleniumLibrary.Click Element       ${account_locator.btn_order}

Click_icon_acc
    SeleniumLibrary.Click Element       ${account_locator.sign_up_button}

Fill Delivery info field
    SeleniumLibrary.Click Element       ${account_locator.btn_cart}

Input_username_text_box
    SeleniumLibrary.Input Text          ${account_locator.username}           Jun0055@gmail.com

Input_password_text_box
    SeleniumLibrary.Input Text          ${account_locator.password}           Jin@2345678

Input_confirm_password_text_box
    SeleniumLibrary.Input Text          ${account_locator.confirmPassword}    Jin@2345678

Input_name_text_box
    SeleniumLibrary.Input Text          ${account_locator.item_name}    ${delivery_info.name}

Input_surname_text_box
    SeleniumLibrary.Input Text          ${account_locator.surName}    ${delivery_info.surname}

Input_address_text_box
    SeleniumLibrary.Input Text          ${account_locator.address}    ${delivery_info.address}

Input_phone_number_text_box
    SeleniumLibrary.Input Text          ${account_locator.phone_number}    ${delivery_info.phone_number}

Click_OK_button
    common.Click Button    OK

Click_PAY_button
    common.Click Button    PAY       

Click_Next_button
    common.Click Button    Next
       