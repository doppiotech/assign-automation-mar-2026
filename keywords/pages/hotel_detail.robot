*** Keywords ***
Verify hotel name on detail page is correct
    [Arguments]    ${expected_name}    ${timeout}=${globle_timeout}
    # รอให้ Element แสดงขึ้นมาก่อนโดยใช้เวลาที่กำหนด (Default 10s)
    Browser.Wait For Elements State    ${hotel_detail.txt_name}    visible    timeout=${timeout}
    # ดึงชื่อโรงแรมจากหน้าเว็บจริง
    ${actual_name}=    Browser.Get Text    ${hotel_detail.txt_name}
    # ตรวจสอบว่าชื่อที่ดึงมา (Actual) ตรงกับที่เราคาดหวัง (Expected) ใน YAML หรือไม่
    BuiltIn.Should Be Equal As Strings    ${actual_name}    ${expected_name}
