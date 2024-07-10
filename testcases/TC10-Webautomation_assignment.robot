*** Settings ***
Resource    ../keywords/imports.robot


*** Test Cases ***
TC01-Test Doppee platfrom
    common.Enter website https://training-platform.doppio-tech.com
    account_feature.Register new account
    product_feature.Search product ("phone”)
    product_feature.Add phone to cart
    account_feature.Fill Delivery info field
    product_page.Purchase the product with credit card 4111 1111 1111 1111
    product_feature.Exp and cvc can be any
    account_feature.Navigate to my order page
    account_feature.The order should be created
