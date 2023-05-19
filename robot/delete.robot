*** Settings ***
Library    AppiumLibrary

*** Keywords ***

Delete Transaction
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/edit
    Click Element    id=com.neversitup.piggipogo:id/edit
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/transaction_remove
    Click Element    id=com.neversitup.piggipogo:id/transaction_remove
    Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/btn_dialog_positive
    Click Element    id=com.neversitup.piggipogo:id/btn_dialog_positive