*** Settings ***
Resource    ../imports.robot

*** Keywords ***
Verify Add to cart button
    SeleniumLibrary.Wait Until Element Is Visible    ${product_locator.Add_to_cart_button}

Click Add to cart button
    SeleniumLibrary.Click Element    ${product_locator.Add_to_cart_button}
    
Verify OK Button
    SeleniumLibrary.Wait Until Element Is Visible    ${product_locator.OK_button}

Click OK Button
    SeleniumLibrary.Click Element       ${product_locator.OK_button}

Verify Credit Card
    SeleniumLibrary.Wait Until Element Is Visible    ${product_locator.card_number}

Purchase The Product With Credit Card 4111 1111 1111 1111
    [Arguments]    ${payment_details.card_number}
    SeleniumLibrary.Input Text          ${product_locator.card_number}        ${payment_details.card_number}

Verify Exp Text Box
    SeleniumLibrary.Wait Until Element Is Visible    ${product_locator.basic_exp}

Input Exp Text Box
    [Arguments]    ${payment_details.expiration_date}
    SeleniumLibrary.Input Text          ${product_locator.basic_exp}        ${payment_details.expiration_date}

Verify Cvc Text Box
    SeleniumLibrary.Wait Until Element Is Visible    ${product_locator.basic_cvc}

Input Cvc Text Box
    [Arguments]    ${payment_details.cvc_code} 
    SeleniumLibrary.Input Text          ${product_locator.basic_cvc}         ${payment_details.cv_code}

Verify Card Owner Text Box
    SeleniumLibrary.Wait Until Element Is Visible    ${product_locator.basic_owner}

Input Card Owner Text Box
    [Arguments]    ${payment_details.card_owner}
    SeleniumLibrary.Input Text          ${product_locator.basic_owner}        ${payment_details.card_owner}

Verify Confirm Payment button
    SeleniumLibrary.Wait Until Element Is Visible    ${product_locator.Confirm_payment_button}

Click Confirm Payment button
    [Arguments]    ${timeout}=10s
    SeleniumLibrary.Wait Until Element Is Visible    ${product_locator.Confirm_payment_button}
    SeleniumLibrary.Click Element       ${product_locator.Confirm_payment_button}