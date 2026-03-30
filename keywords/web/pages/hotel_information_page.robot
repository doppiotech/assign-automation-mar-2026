*** Keywords ***
Verify system can redirect to hotel information page
    [Arguments]    ${hotel_name}    ${timeout}=${default_timeout}
    # 1. สั่งให้ Browser สลับโฟกัสไปที่แท็บล่าสุดที่เพิ่งเปิดขึ้นมาใหม่
    Switch Page    NEW
    ${hotel_locator}=    Replace String    ${hotel_informaion.TXT_HOTEL_NAME}    @#hotel_name@#    ${hotel_name}
    Browser.Wait for elements state    ${hotel_locator}    timeout=${timeout}

Click on book now button
    [Arguments]    ${timeout}=${default_timeout}
    # รอให้ปุ่มโหลดขึ้นมาในระบบ (ใช้ state=attached เพื่อเช็คว่ามี element นี้อยู่แม้จะยังมองไม่เห็น)
    Browser.Wait for elements state    ${hotel_informaion.BTN_BOOKING}    attached    timeout=${timeout}
    Browser.Scroll to element    ${hotel_informaion.BTN_BOOKING}
    Browser.Wait for elements state    ${hotel_informaion.BTN_BOOKING}    timeout=${timeout}
    Browser.Click    ${hotel_informaion.BTN_BOOKING}