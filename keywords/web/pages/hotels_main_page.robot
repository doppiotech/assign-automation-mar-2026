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
Select check-in date  
    [Arguments]     ${checkin_month}    ${checkin_year}    ${checkin_day}  
    # 1. วนลูปหาเดือน/ปี ที่ต้องการ
    FOR    ${i}    IN RANGE    12
        ${current_view}=    Browser.get text    ${hotels_main_page_locators.lbl_month_left}  
        
        # เช็กว่าหน้าจอตอนนี้มีเดือนและปีที่เราต้องการแสดงอยู่หรือไม่
        ${month_match}=    Run keyword and return status    Should contain    ${current_view}    ${checkin_month}
        ${year_match}=    Run Keyword And Return Status    Should Contain    ${current_view}     ${checkin_year} 

        IF    ${month_match} and ${year_match}
            BREAK
        END
        
        # ถ้าไม่เจอให้กด Next
        Browser.Click    ${hotels_main_page_locators.btn_next_one_month}
        Sleep    0.5s    # รอ Animation ปฏิทินเลื่อน
    END

    # 2. คลิกวันที่ (ใช้ Exact Match เพื่อไม่ให้เลข 6 ไปโดนเลข 16 หรือ 26)
    # เราจะใช้คำสั่ง text="${target_day}" เพื่อหาตัวเลขที่ตรงเป๊ะ
    ${checkin_day_button}=        String.Replace string    ${hotels_main_page_locators.btn_date}   {DATE}    ${checkin_day} 
    Browser.Click        ${checkin_day_button}

Select check-out date
    [Arguments]     ${checkout_month}    ${checkout_year}    ${checkout_day} 

Click guests and room
    Browser.Wait for elements state    ${hotels_main_page_locators.btn_guests_and_room}    visible    ${global_timeout}
    Browser.Click    ${hotels_main_page_locators.btn_guests_and_room}

Adjust guest and room quantity
    [Arguments]    ${locator_current_value}    ${btn_plus}    ${btn_minus}    ${target_value}
    [Documentation]    ปรับจำนวนผู้เข้าพัก/ห้อง โดยการกดปุ่ม +/- จนกว่าจะเท่ากับค่าที่ต้องการ
    WHILE    True
        #อ่านค่าปัจจุบันจากหน้าเว็บ (มักจะอยู่ในรูปแบบ Text)
        ${current_text}=    Browser.get text    ${locator_current_value}
        #แปลงเป็นตัวเลขเพื่อให้คำนวณได้ (Convert to Integer)
        ${current_num}=     Convert to integer    ${current_text}
        ${target_num}=      Convert to integer    ${target_value}
        #ตรวจสอบเงื่อนไข
        IF    ${current_num} == ${target_num}
            BREAK    # ถ้าเท่ากันแล้วให้ออกจาก Loop ทันที
        ELSE IF    ${current_num} < ${target_num}
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




 