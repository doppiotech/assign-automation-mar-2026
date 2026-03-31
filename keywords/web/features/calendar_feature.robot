*** Keywords ***
Convert Input Date For Calendar
    [Arguments]    ${target_date}    
    [Documentation]    # รับค่ารูปแบบ YYYY-MM-DD (เช่น 2026-04-10)
    ...     1. ดึงเลขเดือน (01-12) และ ปี (YYYY) จากวันที่ที่ส่งมา 
    ...     2. ดึงชื่อเดือนตามภาษาจากตัวแปร YAML ที่เราย้ายไปก่อนหน้านี้
    ...     3. ประกอบร่าง (เช่น "April 2026" หรือ "เมษายน 2026") 
    ...     4. ดึงเลขวันที่แบบมี 0 นำหน้า แล้วแปลงเป็นตัวเลขเพื่อตัด 0 ออก (เช่น 05 -> 5)
    ${target_month_num}=    DateTime.Convert date    ${target_date}    result_format=%m
    ${target_year}=         DateTime.Convert date    ${target_date}    result_format=%Y
    
    ${month_name}=    BuiltIn.Set variable    ${MONTH_NAME}[${target_month_num}]
        
    ${day_with_zero}=    DateTime.Convert date    ${target_date}    result_format=%d
    ${day_no_zero}=      BuiltIn.Evaluate    str(int('${day_with_zero}'))
    RETURN    ${day_no_zero}    ${target_month_num}    ${target_year}

Open Calendar Popup
    Browser.Wait for elements state    ${hotel.TXT_CHECKIN}    visible
    Browser.Wait for elements state    ${hotel.TXT_CHECKOUT}   visible
    Browser.Click    ${hotel.TXT_CHECKIN}
    Browser.Wait for elements state    ${hotel.CALENDAR_POPUP}   visible    timeout=5s    message=❌ คลิกแล้วปฏิทินไม่ยอมเปิด!

Select Date On Calendar
    [Arguments]    ${target_day}    ${target_month_num}    ${target_year}
    [Documentation]     1. เรียกใช้ Keyword เลื่อนหาเดือน ส่งค่าไปให้ครบ 3 ตัว
    ${month_name}=           BuiltIn.Set variable    ${MONTH_NAME}[${target_month_num}]
    ${target_month_year}=    BuiltIn.Set variable    ${month_name} ${target_year}
    Navigate To Target Month    ${target_month_num}    ${target_year}
    ${locator_calendar_M_Y}=    String.Replace string    ${hotel.TXT_CALENDAR_DAY}    @#MONTH_YEAR@#    ${target_month_year} 
    ${locator_calendar_D_M_Y}=    String.Replace string    ${locator_calendar_M_Y}         @#DAY@#           ${target_day}
    Browser.Wait for elements state     ${locator_calendar_D_M_Y}   
    Browser.Click    ${locator_calendar_D_M_Y}

Navigate To Target Month
    [Arguments]    ${target_month_num}    ${target_year}
    [Documentation]     เอาปีมาต่อกับเลขเดือน เพื่อสร้างรหัสเปรียบเทียบเป้าหมาย (เช่น "2026" + "03" = 202603)
    ...             1. เช็คว่าเจอเดือนเป้าหมาย (เช่น "มีนาคม 2026") แล้วหรือยัง
    ...             อ่านค่าเดือนหน้าต่างซ้าย (nth=0) และหน้าต่างขวา (nth=1)
    ...             2. ตรวจสอบว่า "รหัสเป้าหมาย" ตรงกับซ้าย หรือ ขวา หรือไม่? 
    ...             3. ถ้าไม่ตรงเลย ให้เปรียบเทียบเพื่อเลื่อนซ้าย-ขวา
    ${target_score}=    BuiltIn.Evaluate    int('${target_year}${target_month_num}')
    FOR    ${i}    IN RANGE    12
        ${left_text}=     Browser.Get text    ${hotel.BTN_LEFT_CALENDAR}
        ${right_text}=    Browser.Get text    ${hotel.BTN_RIGHT_CALENDAR}
        
        ${left_words}=    String.Split string    ${left_text}    ${SPACE}
        ${right_words}=    String.Split string    ${right_text}    ${SPACE}

        ${left_name}=     BuiltIn.Set variable    ${left_words}[0]
        ${left_year}=     BuiltIn.Set variable    ${left_words}[1]
        
        ${right_name}=    BuiltIn.Set variable    ${right_words}[0]
        ${right_year}=    BuiltIn.Set variable    ${right_words}[1]
        
        ${left_month_num}=     BuiltIn.Set variable    ${MONTH_NUM}[${left_name}]
        ${right_month_num}=    BuiltIn.Set variable    ${MONTH_NUM}[${right_name}]
        
        ${left_score}=     BuiltIn.Evaluate    int('${left_year}${left_month_num}')
        ${right_score}=    BuiltIn.Evaluate    int('${right_year}${right_month_num}')
        IF    ${target_score} == ${left_score} or ${target_score} == ${right_score}
            Exit for loop
        END
                IF    ${target_score} < ${left_score}
            Browser.Click    ${hotel.BTN_CALENDAR_PREV}
        ELSE IF    ${target_score} > ${right_score}
            Browser.Click    ${hotel.BTN_CALENDAR_NEXT}
        END
        Browser.Get Text    ${hotel.BTN_LEFT_CALENDAR}    !=    ${left_text}
    END

