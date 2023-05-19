*** Settings ***
Library    AppiumLibrary
Resource    .//login_gmail.robot
Resource    .//check_conditions.robot
Resource    .//termaccept.robot
Resource    .//policy.robot
Resource    .//allow_permission.robot
Resource    .//Code_promotion.robot
Resource    .//open_app.robot
Resource    .//select_credit.robot
Resource    .//input5000.robot
#Resource    .//addcashback.robot
Resource    .//selectdate.robot

*** Variables ***
${REMOTE_URL}   http://127.0.0.1:9000/wd/hub
${platformName}    Android
${base}     /Users/user/Documents/piggipoAPK/
${appium:app}    ${base}app-PiggipoGo-debug.apk
${appium:deviceName}   sdk_gphone64_arm64
${appium:automationName}    UiAutomator2
${appium:ensureWebviewsHavePages}    True
${appium:nativeWebScreenshot}    True
${appium:newCommandTimeout}    3600
${appium:connectHardwareKeyboard}    True



*** Test Cases ***
#test resource
#เลือกสมัครด้วย Gmail
    #login_gmail.เลือกสมัครด้วย Gmail
OpenApp
    เปิด app ขึ้นมาใหม่
    เลือกสมัครด้วย Gmail
#ตรวจสอบข้อความเงื่อนไขต่างๆ
    #ตรวจสอบเงื่อนไขต่างๆ
Allow permission
    ยอมรับเงื่อนไขต่างๆ
    ยอมรับนโยบาย
    กดปุ่มข้าม
ลูกค้าเข้ามา subscribe ไปเเล้ว
 #    เปิด app ขึ้นมาใหม่
 #   เลือกสมัครด้วย Gmail
 #   ยอมรับเงื่อนไขต่างๆ
 #   ยอมรับนโยบาย
 #   Allow permission
    ผู้ใช้งานสามารถเข้าเเอพได้
ลูกค้ากดเลือก Credit ใบเเรก
    กดเลือก Credit
ลูกค้ากดเพิ่ม Transection
    กดเพิ่ม Transection
กรอกจำนวนเงิน 5,000
    กดใส่จำนวนเงิน 5000
กดปุ่มเลือก Category
    กดปุ่มเพื่อเข้าไปเข้าหน้าเลือกใช้ Category
กดเลือก BILL PAYMENT
    กดเลือกเเถบ BILL PAYMENT
กดเลือก Category อันเเรก
    กดเลือก Category อันเเรก
#กดใส่ cashback
    #ใส่ cashback
เลือกวันที่ทำ Transaction เป็นวันที่ 4 May 23
    กดเลือกวันที่การทำ Transaction 
กดปุ่มติ๊กถูก
    กดติ๊กถูก
กดเช็คจำนวนเงิน
    เช็คจำนวนเงิน cashback ที่เพิ่มเข้ามา
กดเช็คจำนวนเงิน Amount Spent
    เช็คจำนวนเงิน Amount Spent
กดเช็คชื่อของ Transaction ที่เพิ่มเข้ามา
    เช็คชื่อของ Transaction ที่เพิ่มเข้ามา
กดเลือก cashback อันที่ 2
    เลือก cashback อันที่ 2
กดเช็ควันที่ Add cashback
    เช็ควันที่ Add cashback
กดลบ cashback ที่เพิ่มเข้ามาล่าสุดใบที่สอง
    ลบ cashback ที่เพิ่มเข้ามาล่าสุดใบที่สอง
#กดเลือก cashback ที่พึ่งสร้างไปจะอยู่อันที่ 2
    #กดเลือก cashback ที่พึ่งสร้างไปจะอยู่อันที่ 2
#กดปิด popup รายละเอียด cashback
    #ปิด popup รายละเอียด cashback
#กดเลือก Transaction จะอยู่อันที่ 1
    #กดเลือก Transaction จะอยู่อันที่ 1
#กด Delete Transaction
    #Delete Transaction

*** Keywords ***
เปิด app ขึ้นมาใหม่
    Open Application    ${REMOTE_URL}   
    ...  platformName=${platformName}  
    ...  appium:app=${appium:app}  
    ...  appium:deviceName=${appium:deviceName}  
    ...  appium:automationName=${appium:automationName}  
เลือกสมัครด้วย Gmail
    login_gmail.เลือกสมัครด้วย Gmail
ยอมรับเงื่อนไขต่างๆ
    termaccept.ยอมรับเงื่อนไขต่างๆ
#ตรวจสอบเงื่อนไขต่างๆ
    #check_conditions.ตรวจสอบเงื่อนไขต่างๆ

ยอมรับนโยบาย
    Policy.ยอมรับนโยบาย

Allow permission
    allow_permission.Allow permission
กดปุ่มข้าม
    Code_promotion.กดปุ่มข้าม
ผู้ใช้งานสามารถเข้าเเอพได้
    open_app.ผู้ใช้งานสามารถเข้าเเอพได้
กดเลือก Credit
    select_credit.กดเลือก Credit
กดเพิ่ม Transection 
    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ImageView    10
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.ImageView
กดใส่จำนวนเงิน 5000
    input5000.กดใส่จำนวนเงิน 5000
กดปุ่มเพื่อเข้าไปเข้าหน้าเลือกใช้ Category
    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.ImageView[2]    10
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.ScrollView/android.widget.LinearLayout/android.widget.LinearLayout[1]/android.widget.LinearLayout/android.widget.ImageView[2] 
กดเลือกเเถบ BILL PAYMENT
    Wait Until Element Is Visible    accessibility_id=Bill payment    10
    Click Element    accessibility_id=Bill payment
กดเลือก Category อันเเรก
    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[1]
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout[1]
#ใส่ cashback
    #addcashback.ใส่ cashback
กดเลือกวันที่การทำ Transaction
    selectdate.กดเลือกวันที่การทำ Transaction
กดติ๊กถูก
    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView 
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.widget.ImageView
เช็คจำนวนเงิน cashback ที่เพิ่มเข้ามา
    Element Text Should Be    id=com.neversitup.piggipogo.dev:id/transaction_price    +4,000.00      message= ยอดเงินไม่ถูกต้อง
เช็คจำนวนเงิน Amount Spent
    Element Text Should Be    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView[2]    -10,000.00      message= ยอดคงเหลือไม่ถูกต้อง
เช็คชื่อของ Transaction ที่เพิ่มเข้ามา
    Element Text Should Be    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.LinearLayout/android.view.ViewGroup/android.widget.TextView    Cashback    message=ชื่อไม่ถูกต้อง 
เลือก cashback อันที่ 2
    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.LinearLayout    10
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.LinearLayout/android.widget.RelativeLayout/android.widget.LinearLayout
เช็ควันที่ Add cashback
    Element Text Should Be    id=com.neversitup.piggipogo.dev:id/transaction_view_date   04 MAY 23    message=วันที่ไม่ถูกต้อง
ลบ cashback ที่เพิ่มเข้ามาล่าสุดใบที่สอง
    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.FrameLayout/android.widget.TextView[2]    10
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.FrameLayout/android.widget.TextView[2]
    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.TextView[2]    10
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.LinearLayout[2]/android.widget.LinearLayout/android.widget.TextView[2]
    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.Button[1]    10
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.widget.LinearLayout/android.widget.Button[1]
เช็คจำนวนเงิน Amount Spent อีกรอบ
    Element Text Should Be    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.TextView[2]    -5,000.00      message= ยอดคงเหลือไม่ถูกต้อง
#กดเลือก cashback ที่พึ่งสร้างไปจะอยู่อันที่ 2
    #Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.LinearLayout/android.widget.RelativeLayout
    #Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[2]/android.widget.LinearLayout/android.widget.RelativeLayout
#กดปิด popup รายละเอียด cashback
    #Wait Until Element Is Visible    id=com.neversitup.piggipogo:id/back
    #Click Element    id=com.neversitup.piggipogo:id/back
#กดเลือก Transaction จะอยู่อันที่ 1
    #Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.RelativeLayout
    #Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/androidx.viewpager.widget.ViewPager/android.view.ViewGroup/android.view.ViewGroup/androidx.recyclerview.widget.RecyclerView/android.widget.FrameLayout[1]/android.widget.LinearLayout/android.widget.RelativeLayout
#Delete Transaction
    #delete.Delete Transaction