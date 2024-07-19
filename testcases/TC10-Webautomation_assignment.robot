*** Settings ***
Resource    ../keywords/imports.robot

*** Test Cases ***
TC-01 Open sign in HTTP page perform sign in fail and capture screenshot
    common.Open test application
    app_form_feature.Go to form page and sign in
    common.Check pop up    ${text.unable_to_sign_in}
    common.Capture screenshot
    common.Open test application