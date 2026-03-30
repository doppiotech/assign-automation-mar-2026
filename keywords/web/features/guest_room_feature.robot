*** Keywords ***
Adjust Guest Or Room Quantity
    [Arguments]    ${type}    ${target_number}
    
    # 1. แทนที่คำว่า {TYPE} ใน Locator ให้กลายเป็นแถวที่เราต้องการ (เช่น Rooms)
    ${val_locator}=      Replace String    ${hotel.TXT_GUEST_VALUE}        @#TYPE@#    ${type}
    ${minus_locator}=    Replace String    ${hotel.BTN_GUEST_MINUS}    @#TYPE@#    ${type}
    ${plus_locator}=     Replace String    ${hotel.BTN_GUEST_PLUS}     @#TYPE@#    ${type}
    
    # 2. อ่านค่าตัวเลขที่แสดงอยู่ปัจจุบัน แล้วแปลงเป็นตัวเลขทางคณิตศาสตร์ (Integer)
    ${current_text}=      Browser.Get Text    ${val_locator}
    ${current_number}=    Convert To Integer    ${current_text}
    ${target_number}=     Convert To Integer    ${target_number}
    
    # 3. หาผลต่าง เพื่อดูว่าต้องกดกี่ครั้ง
    ${diff}=    Evaluate    ${target_number} - ${current_number}
    
    # 4. กดปุ่ม + หรือ - ตามจำนวนผลต่างที่คำนวณได้
    IF    ${diff} > 0
        FOR    ${i}    IN RANGE    ${diff}
            Browser.Click    ${plus_locator}
        END
        Log To Console    ✅ กดเพิ่ม (+) ${type} เป็นจำนวน ${target_number}
    ELSE IF    ${diff} < 0
        ${abs_diff}=    Evaluate    abs(${diff})    # แปลงผลต่างติดลบให้เป็นค่าบวกเพื่อนับรอบ
        FOR    ${i}    IN RANGE    ${abs_diff}
            Browser.Click    ${minus_locator}
        END
        Log To Console    ✅ กดลด (-) ${type} เป็นจำนวน ${target_number}
    ELSE
        Log To Console    ✅ ${type} เป็น ${target_number} อยู่แล้ว ไม่ต้องกด
    END
    
    # 5. ตรวจสอบยืนยันความถูกต้องว่าตัวเลขบนจอเปลี่ยนเป็นค่าเป้าหมายจริงๆ
    ${new_text}=    Browser.Get text    ${val_locator}
    Should be equal as strings    ${new_text}    ${target_number}    msg=❌ ปรับจำนวน ${type} ไม่สำเร็จ!

Open Guests And Rooms Dropdown
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Click    ${hotel.TXT_GUEST} 
    Browser.Wait For Elements State    ${hotel.DDL_GUEST}    visible    timeout=${timeout}


Confirm Guests And Rooms Selection
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Click    ${hotel.BTN_GUEST_CONFIRM}
    Browser.Wait For Elements State    ${hotel.BTN_GUEST_CONFIRM}    hidden    timeout=${timeout}