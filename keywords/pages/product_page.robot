*** Settings ***
Resource    ../imports.robot

*** Keywords ***
Search product "phone” in search box
    SeleniumLibrary.Input Text          ${product_locator.search_box}     ${TC01.product_name}

Click search icon
    SeleniumLibrary.Click Element       ${product_locator.search_icon}

Add phone to cart
    SeleniumLibrary.Click Element       ${product_locator.add_phone}

Click Add to cart button
    common.Click Button    Add to cart
    
Purchase the product with credit card 4111 1111 1111 1111
    SeleniumLibrary.Input Text          ${product_locator.basic_bin}        ${payment_details.card_number}
                                    
Input exp text box
    SeleniumLibrary.Input Text          ${product_locator.basic_exp}        ${payment_details.expiration_date}

Input cvc text box
    SeleniumLibrary.Input Text          ${product_locator.basic_cvc}         ${payment_details.cv_code}

Input card owner text box
    SeleniumLibrary.Input Text          ${product_locator.basic_owner}        ${payment_details.card_owner}

Click Confirm Payment button
    common.Click Button    Confirm Payment

Click OK button
    common.Click Button    OK