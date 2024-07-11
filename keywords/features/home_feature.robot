*** Settings ***
Resource    ../imports.robot

*** Keywords ***
Search Product
    [Arguments]    ${product_name}
    home_page.Verify Search Box
    home_page.Search product "phone” in search box     ${product_name}
    home_page.Verify Search Icon
    home_page.Click Search Icon

Add phone to cart
    home_page.Add phone to cart
    product_page.Verify Add to cart button    
    product_page.Click Add to cart button
    product_page.Verify OK Button
    product_page.Click OK Button