*** Settings ***
Resource    ../imports.robot

*** Keywords ***
Add phone to cart
    product_page.Click Add to cart button
    product_page.Click OK button

Exp and cvc can be any
    [Arguments]    ${payment_details.expiration_date}    ${payment_details.cvc_code}    ${payment_details.card_owner}
    product_page.Input Exp Text Box    ${payment_details.expiration_date}
    product_page.Input Cvc Text Box    ${payment_details.cvc_code}
    product_page.Input Card Owner Text Box    ${payment_details.card_owner}
    product_page.Click Confirm Payment button
    product_page.Click OK Button

    

