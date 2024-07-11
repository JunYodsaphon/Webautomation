*** Settings ***
Resource    ../keywords/imports.robot


*** Test Cases ***
TC01-Test Doppee platfrom
    # Enter website https://training-platform.doppio-tech.com
    common.Enter website https://training-platform.doppio-tech.com

    # Register new account
    account_feature.Register new account    ${user_account.gmail}    ${user_account.password}    ${user_account.confirm_password}
    Sleep    2s
    # Search product ("phone”)
    home_feature.Search Product   ${product_web.product_name}
    Sleep    2s
    # Add phone to cart
    home_feature.Add phone to cart
    Sleep    2s

    # Fill Delivery info field
    info_feature.Fill Delivery info field    ${delivery_info.ture_name}    ${delivery_info.surname}    ${delivery_info.address}    ${delivery_info.phone_number}
    Sleep    2s

    #Purchase the product with credit card 4111 1111 1111 1111
    product_page.Purchase The Product With Credit Card 4111 1111 1111 1111    ${payment_details.card_number}
    Sleep    2s

    # Exp and cvc can be any
    product_feature.Exp and cvc can be any    ${payment_details.exp_date}    ${payment_details.cv_code}    ${payment_details.owner_card}
    Sleep    2s

    # Navigate to my order page
    home_page.Click Icon Account

    # The order should be created
    account_page.The Order Should Be Createds
    Sleep    2s