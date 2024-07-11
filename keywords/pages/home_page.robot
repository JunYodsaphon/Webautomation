*** Settings ***
Resource    ../imports.robot

*** Keywords ***
Verify Icon Account
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.icon_account}

Click Icon Account   
    SeleniumLibrary.Click Element       ${home_locator.icon_account}

Verify Icon Cart
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.icon_cart}

Click Icon Cart
    SeleniumLibrary.Click Element       ${home_locator.icon_cart}

Verify Search Icon
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.search_icon}

Click Search Icon
    SeleniumLibrary.Click Element       ${home_locator.search_icon}

Verify Search Box
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.search_box} 

Search product "phone” in search box
    [Arguments]    ${product_name}
    SeleniumLibrary.Input Text          ${home_locator.search_box}     ${product_name}

Add phone to cart
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.add_phone}
    SeleniumLibrary.Click Element       ${home_locator.add_phone}