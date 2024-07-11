*** Settings ***
Resource    ../imports.robot

*** Keywords ***
Verify Info
    home_page.Verify Icon Cart
    home_page.Click Icon Cart

Fill Delivery info field
    [Arguments]    ${full_name}   ${surname}    ${address}    ${phone_number}
    home_page.Verify Icon Cart
    home_page.Click Icon Cart
    info_page.Input Name Text Box    ${full_name}
    info_page.Input Surname Text Box    ${surname}
    info_page.Input Address Text Box    ${address}
    info_page.Input Phone Number Text Box    ${phone_number}
    info_page.Click PAY Button
    info_page.Click Next Button