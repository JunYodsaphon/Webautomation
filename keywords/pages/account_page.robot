*** Settings ***
Resource    ../imports.robot

*** Keywords ***
Click sign up button
    SeleniumLibrary.Click Element       ${account_locator.sign_up_button}

Click icon account
    SeleniumLibrary.Click Element       ${account_locator.icon_account}

The order should be createds
    SeleniumLibrary.Click Element       ${account_locator.btn_order}

Click icon cart
    SeleniumLibrary.Click Element       ${account_locator.btn_cart}

Input username text_box
    SeleniumLibrary.Input Text          ${account_locator.username}           Jun0071@gmail.com

Input password text box
    SeleniumLibrary.Input Text          ${account_locator.password}           Jin@2345678

Input confirm password text box
    SeleniumLibrary.Input Text          ${account_locator.confirmPassword}    Jin@2345678

Input name text box
    SeleniumLibrary.Input Text          ${account_locator.item_name}    ${delivery_info.name}

Input surname text box
    SeleniumLibrary.Input Text          ${account_locator.surName}    ${delivery_info.surname}

Input address text box
    SeleniumLibrary.Input Text          ${account_locator.address}    ${delivery_info.address}

Input phone number text box
    SeleniumLibrary.Input Text          ${account_locator.phone_number}    ${delivery_info.phone_number}

Click OK button
    common.Click Button    OK

Click PAY button
    common.Click Button    PAY       

Click Next button
    common.Click Button    Next
       