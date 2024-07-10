*** Settings ***
Library        SeleniumLibrary
Library        String

Variables    ../resources/testdata/testdata.yaml
Variables    ../resources/setting/setting.yaml
Variables    ../resources/translation/${lang}.yaml    

Resource    common.robot

Resource    ./pages/home_page.robot
Resource    ./pages/account_page.robot
Resource    ./pages/product_page.robot
Resource    ./pages/info_page.robot

Resource    ./locators/home_locator.robot
Resource    ./locators/account_locator.robot
Resource    ./locators/product_locator.robot
Resource    ./locators/info_locator.robot

Resource    ./features/home_feature.robot
Resource    ./features/account_feature.robot
Resource    ./features/product_feature.robot
Resource    ./features/info_feature.robot
