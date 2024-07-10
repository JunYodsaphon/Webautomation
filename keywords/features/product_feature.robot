*** Settings ***
Resource    ../imports.robot

*** Keywords ***
Search product ("phone”)
    product_page.Search_product "phone” in search box
    product_page.Click search icon
    BuiltIn.Sleep    3s

Add phone to cart
    BuiltIn.Sleep    3s
    product_page.Add phone to cart
    BuiltIn.Sleep    3s
    product_page.Click Add to cart button
    BuiltIn.Sleep    3s
    product_page.Click OK button

Exp and cvc can be any
    product_page.Input exp text box
    product_page.Input cvc text box
    product_page.Input card owner text box
    product_page.Click Confirm Payment button
    BuiltIn.Sleep    3s
    product_page.Click OK button
    BuiltIn.Sleep    3s
    

