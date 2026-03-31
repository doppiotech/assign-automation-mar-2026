*** Keywords ***
Adjust Guest Or Room Quantity
    [Arguments]    ${type}    ${target_number}
    [Documentation]    1. แทนที่คำว่า {TYPE} ใน Locator ให้กลายเป็นแถวที่เราต้องการ (เช่น Rooms)
    ...                2. อ่านค่าตัวเลขที่แสดงอยู่ปัจจุบัน แล้วแปลงเป็นตัวเลขทางคณิตศาสตร์ (Integer) 
    ...                3. หาผลต่าง เพื่อดูว่าต้องกดกี่ครั้ง 
    ...                4. กดปุ่ม + หรือ - ตามจำนวนผลต่างที่คำนวณได้ 
    ...                    แปลงผลต่างติดลบให้เป็นค่าบวกเพื่อนับรอบ 
    ...                5. ตรวจสอบยืนยันความถูกต้องว่าตัวเลขบนจอเปลี่ยนเป็นค่าเป้าหมายจริงๆ
    ${val_locator}=      String.Replace string    ${hotel.TXT_GUEST_VALUE}    @#TYPE@#    ${type}
    ${minus_locator}=    String.Replace string    ${hotel.BTN_GUEST_MINUS}    @#TYPE@#    ${type}
    ${plus_locator}=     String.Replace string    ${hotel.BTN_GUEST_PLUS}     @#TYPE@#    ${type}
    
    ${current_text}=      Browser.Get Text    ${val_locator}
    ${current_number}=    BuiltIn.Convert to integer    ${current_text}
    ${target_number}=     BuiltIn.Convert to integer    ${target_number}
    
    ${diff}=    BuiltIn.Evaluate    ${target_number} - ${current_number}
    
    IF    ${diff} > 0
        FOR    ${i}    IN RANGE    ${diff}
            Browser.Click    ${plus_locator}
        END
        BuiltIn.Log    ✅ กดเพิ่ม (+) ${type} เป็นจำนวน ${target_number}
    ELSE IF    ${diff} < 0
        ${abs_diff}=    BuiltIn.Evaluate    abs(${diff})     
        FOR    ${i}    IN RANGE    ${abs_diff}
            Browser.Click    ${minus_locator}
        END
        BuiltIn.Log    ✅ กดลด (-) ${type} เป็นจำนวน ${target_number}
    ELSE
        BuiltIn.Log    ✅ ${type} เป็น ${target_number} อยู่แล้ว ไม่ต้องกด
    END
    
    ${new_val}=    Browser.Get text    ${val_locator}
    BuiltIn.Should be equal as strings    ${new_val}    ${target_number}    msg=❌ ปรับจำนวน ${type} ไม่สำเร็จ!

Open Guests And Rooms Dropdown
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Click    ${hotel.TXT_GUEST} 
    Browser.Wait for elements state    ${hotel.DDL_GUEST}    visible    timeout=${timeout}


Confirm Guests And Rooms Selection
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Click    ${hotel.BTN_GUEST_CONFIRM}
    Browser.Wait for elements state    ${hotel.BTN_GUEST_CONFIRM}    hidden    timeout=${timeout}