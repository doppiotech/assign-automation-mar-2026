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







