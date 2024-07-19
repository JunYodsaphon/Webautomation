*** Settings ***
Resource    ../keywords/imports.robot

*** Test Cases ***
TC01-Test Doppee platfrom

    common.Enter website https://training-platform.doppio-tech.com
    account_feature.Register new account    ${user_account.gmail}    ${user_account.password}    ${user_account.confirm_password}
    home_feature.Search Product   ${product_web.product_name}
    home_feature.Add phone to cart
    info_feature.Verify Info
    info_feature.Fill Delivery info field    ${delivery_info.ture_name}    ${delivery_info.surname}    ${delivery_info.address}    ${delivery_info.phone_number}
    product_page.Purchase The Product With Credit Card    ${payment_details.card_number}
    product_feature.Exp and cvc can be any    ${payment_details.exp_date}    ${payment_details.cv_code}    ${payment_details.owner_card}
    account_page.The Order Should Be Createds
