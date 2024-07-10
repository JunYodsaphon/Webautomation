*** Settings ***
Resource    ../imports.robot

*** Keywords ***
Register new account
    account_page.Click icon account
    account_page.Click sign up button
    account_page.Input username text box    
    account_page.Input password text box
    account_page.Input confirm password text box
    account_page.Click sign up button
    BuiltIn.Sleep    3s
    account_page.Click OK button
    BuiltIn.Sleep    3s

Fill Delivery info field 
    account_page.Click icon cart
    BuiltIn.Sleep    3s
    account_page.Input name text box
    account_page.Input usrname text box
    account_page.Input address text box
    account_page.Input phone number text box
    account_page.Click PAY button
    BuiltIn.Sleep    3s
    account_page.Click Next button
    BuiltIn.Sleep    3s

Navigate to my order page
    account_page.Click icon account
    BuiltIn.Sleep      10s
#ควรสร้างคำสั่งซื้อ
The order should be created
    account_page.The order should be createds
    BuiltIn.Sleep      5s
