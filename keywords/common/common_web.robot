*** Keywords ***
Open web browser by url
    [Documentation]     ใช้สำหรับเปิด Web browser
    ...                 Arguments:
    ...                     - ${url} (string) ลิ้งของเว็ปที่ต้องการเปิด: https://www.gother.online/
    ...                     - ${supported_browser} (string) ระบบ Browser ที่รองรับ: chromium, firefox, webkit
    ...                     - headless=${HEADLESS} เปิด Browser ในโหมดไร้หน้าต่าง (No GUI): ${True} or ${False} โดยใช้ terminal ในการสั่งการ
    ...                        e.g robot -v HEADLESS:FALSE ./web/TC_web_hotels_001.robot
    [Arguments]        ${url}    ${supported_browser}=${default_browser}    
    Browser.New browser     browser=${supported_browser}    headless=${HEADLESS}
    Browser.New page        url=${url}        wait_until=domcontentloaded

Verify home page when login success 
    [Documentation]    ตรวจสอบว่าปุ่ม Login หายไป และไอคอน Profile แสดงขึ้นมา
     ...                   - detached หมายถึง element นั้นหายไปจาก DOM เลย
    Browser.Wait for elements state    ${home_page_locators.btn_login_signup}     detached    timeout=${global_timeout}
    Browser.Wait for elements state    ${home_page_locators.btn_user_icon}    visible    timeout=${global_timeout}

Verify hotels page
    [Documentation]    ตรวจสอบว่าเข้ามาหน้า hotels แล้ว
    ...                    - ตรวจสอบว่า URL ปัจจุบันมีคำว่า hotels
    Browser.Wait for condition    Url    contains    hotels    timeout=${global_timeout}
    Browser.Wait for elements state        ${hotels_main_page_locators.txt_search_destination}    visible    timeout=${global_timeout} 
    Browser.Wait for elements state        ${hotels_main_page_locators.btn_check_in}     visible    timeout=${global_timeout} 
    Browser.Wait for elements state        ${hotels_main_page_locators.btn_check_out}      visible    timeout=${global_timeout} 
    Browser.Wait for elements state        ${hotels_main_page_locators.btn_check_out}     visible    timeout=${global_timeout} 
    Browser.Wait for elements state        ${hotels_main_page_locators.btn_guests_and_room}    visible    timeout=${global_timeout} 
    Browser.Wait for elements state        ${hotels_main_page_locators.btn_hotel_search_button}     visible    timeout=${global_timeout} 
                    
                               
                               
                         
  






