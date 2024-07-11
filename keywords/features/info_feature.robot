*** Settings ***
Resource    ../imports.robot

*** Keywords ***
Fill Delivery info field
    [Arguments]    ${delivery_info.name}   ${delivery_info.surname}    ${delivery_info.address}    ${delivery_info.phone_number}
    info_page.Input Name Text Box    ${delivery_info.name}
    info_page.Input Surname Text Box    ${delivery_info.surname}
    info_page.Input Address Text Box    ${delivery_info.address}
    info_page.Input Phone Number Text Box    ${delivery_info.phone_number}
    info_page.Click PAY Button
    info_page.Click Next Button