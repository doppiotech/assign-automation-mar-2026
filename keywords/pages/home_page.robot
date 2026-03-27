*** Keywords ***
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
    # 1. ใช้ String.Replace String เพื่อเปลี่ยน VARIABLE_TEXT เป็นชื่อเมืองจริง
    ${dynamic_locator}=    String.Replace String    ${homepage.item_destination_result}    VARIABLE_TEXT    ${city_name}
    Browser.Wait for elements state    ${dynamic_locator}    visible    timeout=${timeout}
    Browser.Click    ${dynamic_locator}

Select travel date
    [Arguments]    ${target_month}    ${target_year}    ${checkin_day}    ${checkout_day}
    Browser.Click    ${homepage.btn_datepicker_checkin}
    # วนลูปกด Next จนกว่าจะเจอเดือนและปีที่ระบุใน Test Data
    FOR    ${i}    IN RANGE    12    # จำกัดให้กดไม่เกิน 12 ครั้งป้องกัน Loop ตาย
        ${current_label}=    Browser.Get Text    ${homepage.datepicker.current_month_label}
        # เช็กว่าในตัวอักษรบนหน้าเว็บ มีคำว่า 'April' และ '2026' หรือยัง
        ${status}=    Run Keyword And Return Status    Should Contain    ${current_label}    ${target_month}
        ${year_status}=    Run Keyword And Return Status    Should Contain    ${current_label}    ${target_year}
        Exit For Loop If    ${status} and ${year_status}
        Browser.Click    ${homepage.datepicker.btn_next_month}
    END
    # เมื่อเจอเดือนที่ใช่แล้ว ค่อยคลิกวันที่
    ${locator_in}=    String.Replace String    ${homepage.datepicker.calendar_day}    VARIABLE_DAY    ${checkin_day}
    Browser.Click    ${locator_in}
    ${locator_out}=    String.Replace String    ${homepage.datepicker.calendar_day}    VARIABLE_DAY    ${checkout_day}
    Browser.Click    ${locator_out}
    Sleep    10s


Select guests and rooms
    [Arguments]    ${target_rooms}    ${target_adults}    ${target_children}
    # 1. คลิกเปิด Popup
    Browser.Click    ${homepage.btn_guest_room}
    # --- จุดสำคัญ: รอให้ตัวเลขปรากฏก่อน (ป้องกัน Timeout) ---
    Browser.Wait for elements state    ${homepage.txt_current_rooms}    visible    timeout=10s
    # 2. อ่านค่าปัจจุบันจากหน้าจอ (ใช้ตัวแปรที่เราเพิ่มใหม่)
    ${current_rooms}=     Browser.Get Text    ${homepage.txt_current_rooms}
    ${current_adults}=    Browser.Get Text    ${homepage.txt_current_adults}
    ${current_children}=  Browser.Get Text    ${homepage.txt_current_children}
    # 3. Logic ปรับจำนวน Rooms
    IF    ${target_rooms} > ${current_rooms}
        ${clicks}=    Evaluate    ${target_rooms} - ${current_rooms}
        FOR    ${i}    IN RANGE    ${clicks}
            Browser.Click    ${homepage.btn_add_room}
        END
    END
    # 4. Logic ปรับจำนวน Adults
    IF    ${target_adults} > ${current_adults}
        ${clicks}=    Evaluate    ${target_adults} - ${current_adults}
        FOR    ${i}    IN RANGE    ${clicks}
            Browser.Click    ${homepage.btn_add_adult}
        END
    ELSE IF    ${target_adults} < ${current_adults}
        ${clicks}=    Evaluate    ${current_adults} - ${target_adults}
        FOR    ${i}    IN RANGE    ${clicks}
            Browser.Click    ${homepage.btn_minus_adult}
        END
    END
    # 5. Logic ปรับจำนวน Children
    IF    ${target_children} > ${current_children}
        ${clicks}=    Evaluate    ${target_children} - ${current_children}
        FOR    ${i}    IN RANGE    ${clicks}
            Browser.Click    ${homepage.btn_add_child}
        END
    END
    # 6. กดยืนยันปิด Popup
    Browser.Click    ${homepage.btn_guest_confirm}
    Browser.Wait for elements state    ${homepage.btn_guest_confirm}    hidden    timeout=5s
    Sleep    10s

# Click search button
#     [Arguments]    ${timeout}=${globle_timeout}
#     Browser.Wait for elements state    ${homepage.btn_search}    visible    timeout=${timeout}
#     Browser.Click    ${homepage.btn_search}
#     Sleep    10s
