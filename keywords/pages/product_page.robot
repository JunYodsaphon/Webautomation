*** Settings ***
Resource    ../imports.robot

*** Keywords ***
Search product ("phone”)
    SeleniumLibrary.Input Text          ${product_locator.aaa}     ${TC01.product_name}

BBBBBBBBBBBB
    SeleniumLibrary.Click Element       ${product_locator.bbb}

add phone to cart
    SeleniumLibrary.Click Element       ${product_locator.ccc}

CCCCCCCCCCC
    common.Click Button    Add to cart

DDDDDDDDDD
    common.Click Button    OK
    
Purchase the product with credit card 4111 1111 1111 1111
    SeleniumLibrary.Input Text          xpath=//input[@id="basic_bin"]        ${payment_details.card_number}
                                    
Exp and cvc can be any
    SeleniumLibrary.Input Text          xpath=//input[@id="basic_exp"]        ${payment_details.expiration_date}

AAAAAAAAA
    SeleniumLibrary.Input Text          xpath=//input[@id="basic_cvc"]         ${payment_details.cv_code}

EEEEEEEEEEE
    SeleniumLibrary.Input Text          xpath=//input[@id="basic_owner"]        ${payment_details.card_owner}

FFFFFFFFFFFFFF
    common.Click Button    Confirm Payment

Alert_
    common.Click Button    OK