*** Keywords ***
Handle cookie consent if present
    [Arguments]    ${timeout}=10s
    ${status}=    BuiltIn.Run Keyword And Return Status    
    ...    Browser.Wait For Elements State    ${homepage.btn_accept_all_cookie}    visible    timeout=${timeout}
    IF    ${status}
        BuiltIn.Sleep    1s
        Browser.Click    ${homepage.btn_accept_all_cookie}
        Browser.Wait For Elements State    ${homepage.btn_accept_all_cookie}    hidden    timeout=10s
        Log To Console    Cookie Accepted Successfully.
    ELSE
        Log To Console    Cookie consent didn't appear within ${timeout}, skipping...
    END

Click login signup button
    [Arguments]     ${timeout}=${globle_timeout}
    Browser.Wait for elements state     ${homepage.btn_loging}       visible    timeout=${timeout}
    Browser.Click    ${homepage.btn_loging}       

Click email or mobile no. button
    [Arguments]     ${timeout}=${globle_timeout}
    Browser.Wait for elements state     ${homepage.btn_mail_or_mobile}       visible    timeout=${timeout}
    Browser.Click    ${homepage.btn_mail_or_mobile}   

Fill info in field email 
    [Arguments]     ${user_account}  
    Browser.Fill text   ${homepage.txt.email_popuplogin}      ${user_account.email} 

Click login button
    [Arguments]     ${timeout}=${globle_timeout}
    Browser.Wait for elements state     ${homepage.btn_login_next_step}      visible    timeout=${timeout}
    Browser.Click    ${homepage.btn_login_next_step}   

Fill info in field password 
    [Arguments]     ${user_account}  
    Browser.Fill text   ${homepage.txt_field_pass_popuplogin}     ${user_account.password} 

Click login in popup loging 
    [Arguments]     ${timeout}=${globle_timeout}
    Browser.Wait for elements state     ${homepage.btn_login_final_login}          visible    timeout=${timeout}
    Browser.Click   ${homepage.btn_login_final_login}   

Verify login success
    [Arguments]    ${timeout}=${globle_timeout}
    Browser.Wait for elements state    ${homepage.icon.profile}    visible    timeout=${timeout}
    Browser.Get Element States    ${homepage.icon.profile}    contains    visible 

Click tap hotels
    [Arguments]     ${timeout}=${globle_timeout}
    Browser.Wait for elements state     ${homepage.menu.hotel}          visible    timeout=${timeout}
    Browser.Click   ${homepage.menu.hotel}   

Click textbox in section destinatio
    [Arguments]     ${timeout}=${globle_timeout}
    Browser.Wait for elements state     ${homepage.txt_destination}           visible    timeout=${timeout}
    Browser.Click   ${homepage.txt_destination}   

Input destination
    [Arguments]    ${text}      ${timeout}=${globle_timeout}
    Browser.Wait for elements state    id=hotel-search-destination    visible    timeout=${timeout}
    Browser.Fill Text    id=hotel-search-destination    ${text}

Select destination from dropdown
    [Arguments]    ${city_name}    ${timeout}=${globle_timeout}
    # 1. พิมพ์ชื่อเมืองลงในช่อง Search ก่อน
    Browser.Fill Text    ${homepage.input_search_destination}    ${city_name}
    # 2. รอให้ Dropdown รายการเมืองโผล่ขึ้นมา (ใช้ :has-text กับรายการที่จะคลิก)
    # เราจะหา div หรือ span ที่มีชื่อเมือง "Bangkok" ภายในคอนเทนเนอร์ suggestion
    ${item_to_select}=    Set Variable    ${homepage.container_suggestions} >> text="${city_name}"
    Browser.Wait For Elements State    ${item_to_select}    visible    timeout=${timeout}
    Browser.Click                      ${item_to_select}
    Log To Console    Selected: ${city_name} from dropdown

Select travel date
    [Arguments]    ${target_month}    ${target_year}    ${checkin_day}    ${checkout_day}    ${timeout}=${globle_timeout}
    # 1. เปิดปฏิทิน
    Browser.Click    ${homepage.btn_datepicker_checkin}
    # 2. วนลูปหาเดือนและปีที่ต้องการ
    FOR    ${i}    IN RANGE    12
        ${current_label}=    Browser.Get Text    ${homepage.lbl_datepicker_month_year}
        # เช็กว่าเจอทั้งเดือนและปีที่ต้องการหรือยัง
        ${is_month_found}=    Run Keyword And Return Status    Should Contain    ${current_label}    ${target_month}
        ${is_year_found}=     Run Keyword And Return Status    Should Contain    ${current_label}    ${target_year}
        Exit For Loop If    ${is_month_found} and ${is_year_found}
        # ถ้ายังไม่เจอ ให้กด Next
        Browser.Click    ${homepage.btn_datepicker_next}
    END
    # 3. คลิกวันที่ Check-in และ Check-out
    # ใช้เทคนิค :has-text เพื่อหาเลขวันที่ภายในคลาสของวันนั้นๆ
    Browser.Click    ${homepage.calendar_day}:has-text("${checkin_day}")
    Browser.Click    ${homepage.calendar_day}:has-text("${checkout_day}")
    Log To Console   Selected Date: ${checkin_day} - ${checkout_day} ${target_month} ${target_year}



Select guests and rooms
    [Arguments]    ${target_rooms}    ${target_adults}    ${target_children}
    # 1. คลิกเปิดส่วนเลือกผู้เข้าพัก
    Browser.Click    ${homepage.btn_guest_room}
    
    # 2. ปรับจำนวนแต่ละอย่าง (เรียกใช้ Sub-keyword)
    Adjust guest quantity    ${homepage.txt_current_rooms}     ${homepage.btn_add_room}     ${homepage.btn_minus_room}    ${target_rooms}
    Adjust guest quantity    ${homepage.txt_current_adults}    ${homepage.btn_add_adult}    ${homepage.btn_minus_adult}   ${target_adults}
    Adjust guest quantity    ${homepage.txt_current_children}  ${homepage.btn_add_child}    ${homepage.btn_minus_child}   ${target_children}

    # 3. กดยืนยันเพื่อบันทึกค่า
    Browser.Click    ${homepage.btn_guest_confirm}
    Browser.Wait For Elements State    ${homepage.btn_guest_confirm}    hidden    timeout=5s

Adjust guest quantity
    [Arguments]    ${locator_display}    ${btn_add}    ${btn_minus}    ${target_count}
    # อ่านค่าตัวเลขปัจจุบันจากหน้าจอ
    ${current_count}=    Browser.Get Text    ${locator_display}
    ${current_count}=    Convert To Integer    ${current_count}
    
    # วนลูปคลิกจนกว่าตัวเลขบนหน้าจอจะเท่ากับค่าที่เราต้องการใน Test Data
    WHILE    ${current_count} != ${target_count}
        IF    ${target_count} > ${current_count}
            Browser.Click    ${btn_add}
        ELSE
            Browser.Click    ${btn_minus}
        END
        # อัปเดตค่าตัวเลขใหม่หลังจากคลิกปุ่มไปแล้ว
        ${current_count}=    Browser.Get Text    ${locator_display}
        ${current_count}=    Convert To Integer    ${current_count}
    END



Click search button
    [Arguments]    ${timeout}=${globle_timeout}
    Browser.Wait for elements state    ${homepage.btn_search_submit}     visible    timeout=${timeout}
    Browser.Click    ${homepage.btn_search_submit} 
    Sleep    5s




















# Select guests and rooms
#     [Arguments]    ${target_rooms}    ${target_adults}    ${target_children}
#     # 1. คลิกเปิด Popup
#     Browser.Click    ${homepage.btn_guest_room}
#     # --- เพิ่ม Sleep สั้นๆ เพื่อให้ Animation ของ Popup นิ่งก่อนอ่านค่า ---
#     Sleep    1s
#     Browser.Wait for elements state    ${homepage.txt_current_rooms}    visible    timeout=10s
#     # 2. อ่านค่าปัจจุบันและแปลงเป็นตัวเลข (Convert to Integer) เพื่อป้องกันการเปรียบเทียบผิดพลาด
#     ${current_rooms}=     Browser.Get Text    ${homepage.txt_current_rooms}
#     ${current_rooms}=     Convert To Integer    ${current_rooms}
    
#     ${current_adults}=    Browser.Get Text    ${homepage.txt_current_adults}
#     ${current_adults}=    Convert To Integer    ${current_adults}
    
#     ${current_children}=  Browser.Get Text    ${homepage.txt_current_children}
#     ${current_children}=  Convert To Integer    ${current_children}

#     # 3. Logic ปรับจำนวน Rooms
#     IF    ${target_rooms} > ${current_rooms}
#         ${clicks}=    Evaluate    ${target_rooms} - ${current_rooms}
#         FOR    ${i}    IN RANGE    ${clicks}
#             Browser.Click    ${homepage.btn_add_room}
#         END
#     END

#     # 4. Logic ปรับจำนวน Adults
#     IF    ${target_adults} > ${current_adults}
#         ${clicks}=    Evaluate    ${target_adults} - ${current_adults}
#         FOR    ${i}    IN RANGE    ${clicks}
#             Browser.Click    ${homepage.btn_add_adult}
#         END
#     ELSE IF    ${target_adults} < ${current_adults}
#         ${clicks}=    Evaluate    ${current_adults} - ${target_adults}
#         FOR    ${i}    IN RANGE    ${clicks}
#             Browser.Click    ${homepage.btn_minus_adult}
#         END
#     END

#     # 5. Logic ปรับจำนวน Children
#     IF    ${target_children} > ${current_children}
#         ${clicks}=    Evaluate    ${target_children} - ${current_children}
#         FOR    ${i}    IN RANGE    ${clicks}
#             Browser.Click    ${homepage.btn_add_child}
#         END
#     END

#     # 6. กดยืนยันปิด Popup
#     Browser.Click    ${homepage.btn_guest_confirm}
#     Browser.Wait for elements state    ${homepage.btn_guest_confirm}    hidden    timeout=5s





