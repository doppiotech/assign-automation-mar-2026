*** Keywords ***
Verify Booking Success Page
    [Arguments]    ${expected_email}    ${timeout}=${success_page_timeout}
    [Documentation]    1. รอให้โหลดหน้า Success (ตั้ง Timeout เผื่อจังหวะเว็บประมวลผลจ่ายเงิน) 
    ...                2. ตรวจสอบว่ามีอีเมลที่เรากรอกไปแสดงอยู่จริง 
    ...                3. ดึงหมายเลขการจอง (Booking Number) ออกมา
    Browser.Wait for elements state    ${success.TXT_HEADER}    visible    timeout=${timeout}
    Log To Console    \n✅ เข้าสู่หน้าชำระเงินสำเร็จเรียบร้อยแล้ว
    
    ${email_locator}=    Replace String    ${success.TXT_EMAIL}    @#EMAIL@#    ${expected_email}
    Browser.Wait for elements state    ${email_locator}    visible
    Log To Console    ✅ ตรวจสอบอีเมลการจองถูกต้อง: ${expected_email}
    
    ${booking_text}=    Browser.Get text    ${success.TXT_BOOKING_NO}  
    Log To Console    🎉 หมายเลขการจอง (Booking Reference) คือ: ${booking_text}