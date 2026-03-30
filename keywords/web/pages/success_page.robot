*** Keywords ***
Verify Booking Success Page
    [Arguments]    ${expected_email}    ${timeout}=45s
    
    # 1. รอให้โหลดหน้า Success (ตั้ง Timeout เผื่อจังหวะเว็บประมวลผลจ่ายเงิน)
    Browser.Wait For Elements State    ${success.TXT_HEADER}    visible    timeout=${timeout}
    Log To Console    \n✅ เข้าสู่หน้าชำระเงินสำเร็จเรียบร้อยแล้ว
    
    # 2. ตรวจสอบว่ามีอีเมลที่เรากรอกไปแสดงอยู่จริง
    ${email_locator}=    Replace String    ${success.TXT_EMAIL}    @#EMAIL@#    ${expected_email}
    Browser.Wait For Elements State    ${email_locator}    visible
    Log To Console    ✅ ตรวจสอบอีเมลการจองถูกต้อง: ${expected_email}
    
    # 3. ดึงหมายเลขการจอง (Booking Number) ออกมา
    ${booking_text}=    Browser.Get Text    ${success.TXT_BOOKING_NO}  
    Log To Console    🎉 หมายเลขการจอง (Booking Reference) คือ: ${booking_text}