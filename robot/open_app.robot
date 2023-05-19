*** Settings ***
Library    AppiumLibrary

*** Keywords ***
ผู้ใช้งานสามารถเข้าเเอพได้
    Wait Until Page Contains Element  id=com.neversitup.piggipogo.dev:id/close    10
    Click Element    id=com.neversitup.piggipogo.dev:id/close
   