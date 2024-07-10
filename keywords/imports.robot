*** Settings ***
Library        SeleniumLibrary
Library        String

Variables    ../resources/testdata/testdata.yaml
Variables    ../resources/setting/setting.yaml
Variables    ../resources/translation/${lang}.yaml    

Resource    common.robot

Resource    ./pages/account_page.robot
Resource    ./pages/product_page.robot

Resource    ./locators/account_locator.robot
Resource    ./locators/product_locator.robot

Resource    ./features/account_feature.robot
Resource    ./features/product_feature.robot