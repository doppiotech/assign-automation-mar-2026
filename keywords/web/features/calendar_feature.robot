*** Keywords ***

Calculate Target Date For Calendar
    [Arguments]    ${days_ahead}
    # 1. ดึงชื่อเดือนและปี (เช่น April 2026)
# 1. ดึงเลขเดือน (01-12) และ ปี (YYYY) แทนการดึงชื่อเดือนตรงๆ
    ${target_month_num}=    Get Current Date    increment=${days_ahead} days    result_format=%m
    ${target_year}=         Get Current Date    increment=${days_ahead} days    result_format=%Y
    IF    '${LANG}' == 'th'
        ${month_name}=    Set Variable    ${MONTH_NAME_TH}[${target_month_num}]
        # 💡 ข้อควรระวัง: ถ้าเว็บภาษาไทยใช้ปี พ.ศ. (เช่น 2569) ให้เอา Comment บรรทัดล่างออกเพื่อบวกปีเพิ่มครับ
        # ${target_year}=    Evaluate    ${target_year} + 543
    ELSE
        ${month_name}=    Set Variable    ${MONTH_NAME_EN}[${target_month_num}]
    END
    
    # 3. ประกอบร่าง (เช่น "มีนาคม 2026" หรือ "March 2026")
    ${target_month_year}=    Set Variable    ${month_name} ${target_year}    
    # 2. ดึงเลขวันที่แบบมี 0 นำหน้า (เช่น 06) แล้วแปลงเป็นตัวเลขเพื่อตัด 0 ออก (จะได้ 6)
    ${day_with_zero}=    Get Current Date    increment=${days_ahead} days    result_format=%d
    ${day_no_zero}=      Evaluate    str(int('${day_with_zero}'))
    
    RETURN    ${target_month_year}    ${day_no_zero}    ${target_month_num}    ${target_year}

Open Calendar Popup
    Browser.Wait For Elements State    ${hotel.TXT_CHECKIN}    visible
    Browser.Wait For Elements State    ${hotel.TXT_CHECKOUT}   visible
    Log To Console    ✅ พบช่องกรอก Check-in และ Check-out บนหน้าจอ
    Browser.Click    ${hotel.TXT_CHECKIN}
    Browser.Wait For Elements State    ${hotel.CALENDAR_POPUP}   visible    timeout=5s    message=❌ คลิกแล้วปฏิทินไม่ยอมเปิด!
    Log To Console    ✅ ปฏิทินเปิดขึ้นมาเรียบร้อยแล้ว

Navigate To Target Month
    [Arguments]    ${target_month_year}    ${target_month_num}    ${target_year}
    
    # เอาปีมาต่อกับเลขเดือน เพื่อสร้างรหัสเปรียบเทียบเป้าหมาย (เช่น "2026" + "03" = 202603)
    ${target_score}=    Evaluate    int('${target_year}${target_month_num}')
    
    FOR    ${i}    IN RANGE    12
        # 1. เช็คว่าเจอเดือนเป้าหมาย (เช่น "มีนาคม 2026") แล้วหรือยัง
        # 1. อ่านค่าเดือนหน้าต่างซ้าย (nth=0) และหน้าต่างขวา (nth=1)
        ${left_text}=     Browser.Get Text    css=div[class^="date-text"]>p >> nth=0
        ${right_text}=    Browser.Get Text    css=div[class^="date-text"]>p >> nth=1
        
        ${left_words}=    Split String    ${left_text}    ${SPACE}
        ${left_name}=     Set Variable    ${left_words}[0]
        ${left_year}=     Set Variable    ${left_words}[1]
        
        IF    '${LANG}' == 'th'
            ${left_month_num}=    Set Variable    ${MONTH_NUM_TH}[${left_name}]
        ELSE
            ${left_month_num}=    Set Variable    ${MONTH_NUM_EN}[${left_name}]
        END
        ${left_score}=    Evaluate    int('${left_year}${left_month_num}')
        
        # 3. แปลงข้อความเดือนขวาให้เป็นรหัสตัวเลข
        ${right_words}=    Split String    ${right_text}    ${SPACE}
        ${right_name}=    Set Variable    ${right_words}[0]
        ${right_year}=    Set Variable    ${right_words}[1]
        IF    '${LANG}' == 'th'
            ${right_month_num}=    Set Variable    ${MONTH_NUM_TH}[${right_name}]
        ELSE
            ${right_month_num}=    Set Variable    ${MONTH_NUM_EN}[${right_name}]
        END
        ${right_score}=    Evaluate    int('${right_year}${right_month_num}')
        
        # 4. ตรวจสอบว่า "รหัสเป้าหมาย" ตรงกับซ้าย หรือ ขวา หรือไม่?
        IF    ${target_score} == ${left_score} or ${target_score} == ${right_score}
            Log To Console    ✅ พบเดือนเป้าหมาย ${target_month_year} บนหน้าจอแล้ว
            Exit For Loop
        END
        
        # 5. ถ้าไม่ตรงเลย ให้เปรียบเทียบเพื่อเลื่อนซ้าย-ขวา
        IF    ${target_score} < ${left_score}
            # ถ้าเป้าหมายน้อยกว่าเดือนซ้ายสุด -> กดปุ่มย้อนกลับ (<)
            Browser.Click    ${hotel.BTN_CALENDAR_PREV}
            Log To Console    ⏪ กดเลื่อนปฏิทินย้อนกลับ
        ELSE IF    ${target_score} > ${right_score}
            # ถ้าเป้าหมายมากกว่าเดือนขวาสุด -> กดปุ่มถัดไป (>)
            Browser.Click    ${hotel.BTN_CALENDAR_NEXT}
            Log To Console    ⏩ กดเลื่อนปฏิทินไปข้างหน้า
        END
        Sleep    0.5s
    END

Select Date On Calendar
    [Arguments]    ${target_month_year}    ${target_day}    ${target_month_num}    ${target_year}
    
    # 1. เรียกใช้ Keyword เลื่อนหาเดือน ส่งค่าไปให้ครบ 3 ตัว
    Navigate To Target Month    ${target_month_year}    ${target_month_num}    ${target_year}
    ${locator_step1}=    Replace String    ${hotel.TXT_CALENDAR_DAY}    @#MONTH_YEAR@#    ${target_month_year} 
    # แทนที่ {DAY} ตามลงไป
    ${final_locator}=    Replace String    ${locator_step1}         @#DAY@#           ${target_day}
    Browser.Wait for elements state     ${final_locator}   
    Browser.Click    ${final_locator}
    Log To Console    ✅ กดเลือกวันที่ ${target_day} ${target_month_year} สำเร็จ
