*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Allow permission
    Wait Until Element Is Visible    id=com.android.permissioncontroller:id/permission_allow_button    10
    Click Element    id=com.android.permissioncontroller:id/permission_allow_button    