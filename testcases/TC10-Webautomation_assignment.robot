*** Settings ***
Resource    ../keywords/imports.robot


*** Test Cases ***
TC00-Tesae
    common.Enter website https://training-platform.doppio-tech.com
    BuiltIn.Sleep    5s  
    account_page.Navigate_to_my_order_page
    BuiltIn.Sleep    5s
# TC01-Test Doppee platfrom
#     common.Enter website https://training-platform.doppio-tech.com
#     account_feature.Register new account
#     account_page.Login with the registered account
#     product_page.Search product ("phone”)
#     product_page.add phone to cart
#     account_feature.Fill Delivery info field
#     product_page.Purchase the product with credit card 4111 1111 1111 1111
#     product_feature.Exp and cvc can be any
#     account_page.Navigate to my order page
#     account_page.The order should be created
