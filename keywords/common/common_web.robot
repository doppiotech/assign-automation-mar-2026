*** Keywords ***
Open web browser by url
    [Documentation]     ใช้สำหรับเปิด Web browser
    ...                 Arguments:
    ...                     - ${url} (string) ลิ้งของเว็ปที่ต้องการเปิด: https://google.com
    ...                     - ${supported_browser} (string) ระบบ Browser ที่รองรับ: chromium, firefox, webkit
    ...                     - ${headless_mode} (bool) เปิด Browser ในโหมดไร้หน้าต่าง (No GUI): ${True} or ${False}
    [Arguments]     ${url}=${gother_web}
    Browser.New browser         headless=${FALSE}       args=["--start-maximized"]
    Browser.New context         viewport=${NONE}
    Browser.New page            url=${url}
