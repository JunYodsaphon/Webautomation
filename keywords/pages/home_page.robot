*** Settings ***
Resource    ../imports.robot

*** Keywords ***
Click Icon Account
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.icon_account}    
    SeleniumLibrary.Click Element       ${home_locator.icon_account}

Click Icon Cart
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.icon_cart}
    SeleniumLibrary.Click Element       ${home_locator.icon_cart}

Click Search Icon
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.search_icon}
    SeleniumLibrary.Click Element       ${home_locator.search_icon}


Search product "phone” in search box
    [Arguments]    ${product_name}
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.search_box} 
    SeleniumLibrary.Input Text          ${home_locator.search_box}     ${product_name}

Add phone to cart
    SeleniumLibrary.Wait Until Element Is Visible    ${home_locator.add_phone}
    SeleniumLibrary.Click Element       ${home_locator.add_phone}