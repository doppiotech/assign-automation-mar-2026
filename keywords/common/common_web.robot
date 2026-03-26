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
    Browser.New page        url=${url}

Check if element display
    [Arguments]    ${locator}
    Browser.Wait for elements state    ${locator}
    Browser.Scroll to element            ${locator}




