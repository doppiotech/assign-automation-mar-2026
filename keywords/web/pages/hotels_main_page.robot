*** Keywords ***
Click hotels tab 
    Browser.Wait for elements state    ${home_page_locators.btn_hotels_tab_menu}     visible    ${global_timeout}
    Browser.Click        ${home_page_locators.btn_hotels_tab_menu} 

Click destination or accommodation name search field
    Browser.Wait for elements state    ${hotels_main_page_locators.txt_search_hotels}         visible    ${global_timeout}
    Browser.Click        ${hotels_main_page_locators.txt_search_hotels}     
Input your destination or accommodation name search field
    [Arguments]        ${search_hotels_text}
    Browser.Fill text        ${hotels_main_page_locators.txt_search_hotels}                    ${search_hotels_text}

Select destination or accommodation name from suggestion list
    [Arguments]    ${search_hotels_text}
    ${้hotels_main_page.destination_locator}=        String.Replace string    ${hotels_main_page_locators.btn_search_suggestion}    {DESTINATION}    ${search_hotels_text}
    Browser.Wait for elements state    ${้hotels_main_page.destination_locator}      visible        ${global_timeout}
    Browser.Click            ${้hotels_main_page.destination_locator}
    
Clcik check in
    Browser.Click    ${hotels_main_page_locators.btn_check_in} 

Select check-in and check-out date  
    [Arguments]    ${target_day}    ${target_month}    ${target_year}
    #วนลูปหาเดือนและปีที่ต้องการ (สูงสุด 12 เดือน)
    FOR    ${i}    IN RANGE    12
        ${current_label}=    Browser.Get text    ${hotels_main_page_locators.lbl_month_year_left}
        ${parts}=            Split String    ${current_label}    ${SPACE}
        ${month}=            Set Variable    ${parts}[0]
        ${year}=             Set Variable    ${parts}[1]
        Log to console        ${current_label}
        Log to console        ${month}
        Log to console        ${year}
        #เช็กว่าหน้าจอแสดงเดือนและปีที่ต้องการหรือยัง
        ${is_month_found}=    Run keyword and return status    Should contain    ${month}   ${target_month}
        ${is_year_found}=     Run keyword and return status    Should contain    ${year}    ${target_year}
        #ถ้าเจอแล้วให้ออกจากการหาเดือน
        IF    not (${is_month_found} and ${is_year_found})
        #ถ้ายังไม่เจอทั้งเดือนและปี ให้กด Next
            Browser.Click    ${hotels_main_page_locators.btn_next_one_month}
            Sleep    0.5s
        ELSE
            #ถ้าเจอครบแล้ว ให้ออกจากลูป
            BREAK
        END
    END

Click guests and room
    Browser.Wait for elements state    ${hotels_main_page_locators.btn_guests_and_room}    visible    ${global_timeout}
    Browser.Click    ${hotels_main_page_locators.btn_guests_and_room}

Adjust guest and room quantity
    [Arguments]    ${locator_current_value}    ${btn_plus}    ${btn_minus}    ${target_value}
    [Documentation]    ปรับจำนวนผู้เข้าพัก/ห้อง โดยการกดปุ่ม +/- จนกว่าจะเท่ากับค่าที่ต้องการ
    WHILE    True
        #ดึงตัวเลขปัจจุบันบนหน้าเว็บมาใส่ไว้ใน current_text
        ${current_text}=    Browser.get text    ${locator_current_value}
        #ตรวจสอบเงื่อนไข
        IF    ${current_text} == ${target_value}
            BREAK    # ถ้าเท่ากันแล้วให้ออกจาก Loop ทันที
        ELSE IF    ${current_text} < ${target_value}
            Browser.Click    ${btn_plus}    #ถ้าน้อยกว่าเป้าหมาย ให้กดบวก
        ELSE
            Browser.Click    ${btn_minus}    #ถ้ามากกว่าเป้าหมาย ให้กดลบ
        END
    END

Select guests and room 
    [Arguments]    ${target_rooms}    ${target_adults}    ${target_children}
    Adjust guest and room quantity    ${hotels_main_page_locators.lbl_rooms_amount}         ${hotels_main_page_locators.btn_rooms_increase}       ${hotels_main_page_locators.btn_rooms_decrease}       ${target_rooms}
    Adjust guest and room quantity    ${hotels_main_page_locators.lbl_adults_amount}        ${hotels_main_page_locators.btn_adults_increase}      ${hotels_main_page_locators.btn_adults_decrease}      ${target_adults}
    Adjust guest and room quantity    ${hotels_main_page_locators.lbl_children_amount}      ${hotels_main_page_locators.btn_children_increase}    ${hotels_main_page_locators.btn_children_decrease}    ${target_children}

Click confirm guests and rooms
    Browser.Wait for elements state    ${hotels_main_page_locators.btn_confirm_guests_room_button}    visible    ${global_timeout}
    Browser.Click    ${hotels_main_page_locators.btn_confirm_guests_room_button}

Click search button
    Browser.Wait for elements state    ${hotels_main_page_locators.btn_hotel_search_button}    visible    ${global_timeout}
    Browser.Click         ${hotels_main_page_locators.btn_hotel_search_button}




 