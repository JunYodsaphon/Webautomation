*** Settings ***
Resource    ../imports.robot

*** Keywords ***
Click Icon Account
    SeleniumLibrary.Click Element       ${account_locator.icon_account}

Click Icon Cart
    SeleniumLibrary.Click Element       ${account_locator.icon_cart}