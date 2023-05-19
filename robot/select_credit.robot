*** Settings ***
Library    AppiumLibrary

*** Keywords ***
กดเลือก Credit
    Wait Until Element Is Visible  id=com.neversitup.piggipogo.dev:id/dashboard_item    10
    Click Element    id=com.neversitup.piggipogo.dev:id/dashboard_item