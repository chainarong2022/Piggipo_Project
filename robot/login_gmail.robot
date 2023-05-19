*** Settings ***
Library    AppiumLibrary

*** Keywords ***
เลือกสมัครด้วย Gmail
    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.Button
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[2]/android.widget.Button

    Wait Until Element Is Visible    xpath=//android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]
    Click Element    xpath=//android.widget.LinearLayout/android.support.v7.widget.RecyclerView/android.widget.LinearLayout[1]
    