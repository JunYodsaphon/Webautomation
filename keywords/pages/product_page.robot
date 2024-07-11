*** Settings ***
Resource    ../imports.robot

*** Keywords ***

Click Add to cart button
    SeleniumLibrary.Wait Until Element Is Visible    ${product_locator.Add_to_cart_button}
    SeleniumLibrary.Click Element    ${product_locator.Add_to_cart_button}

Click OK Button
    SeleniumLibrary.Wait Until Element Is Visible    ${product_locator.OK_button}
    SeleniumLibrary.Click Element       ${product_locator.OK_button}

Purchase The Product With Credit Card 4111 1111 1111 1111
    [Arguments]    ${payment_details.card_number}
    SeleniumLibrary.Wait Until Element Is Visible    ${product_locator.card_number}
    SeleniumLibrary.Input Text          ${product_locator.card_number}        ${payment_details.card_number}
                                    
Input Exp Text Box
    [Arguments]    ${payment_details.expiration_date}
    SeleniumLibrary.Wait Until Element Is Visible    ${product_locator.basic_exp}
    SeleniumLibrary.Input Text          ${product_locator.basic_exp}        ${payment_details.expiration_date}

Input Cvc Text Box
    [Arguments]    ${payment_details.cvc_code}
    SeleniumLibrary.Wait Until Element Is Visible    ${product_locator.basic_cvc} 
    SeleniumLibrary.Input Text          ${product_locator.basic_cvc}         ${payment_details.cv_code}

Input Card Owner Text Box
    [Arguments]    ${payment_details.card_owner}
    SeleniumLibrary.Wait Until Element Is Visible    ${product_locator.basic_owner}
    SeleniumLibrary.Input Text          ${product_locator.basic_owner}        ${payment_details.card_owner}

Click Confirm Payment button
    SeleniumLibrary.Wait Until Element Is Visible    ${product_locator.Confirm_payment_button}
    SeleniumLibrary.Click Element       ${product_locator.Confirm_payment_button}