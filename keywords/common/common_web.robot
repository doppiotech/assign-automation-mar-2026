*** Keywords ***
Open browser
    Browser.New Browser    browser=chromium    headless=${False}    args=["--start-maximized"]
    Browser.New Context
    Browser.Set Browser Timeout    20s
    Browser.New Page    ${WEBSITE_URL}      wait_until=domcontentloaded

Switch To New Tab
    Switch Page    NEW

Wait Page Load
    Browser.Wait for load state     state=networkIdle

# Open web browser by url
#     [Documentation]     ใช้สำหรับเปิด Web browser
#     ...                 Arguments:
#     ...                     - ${url} (string) ลิ้งของเว็ปที่ต้องการเปิด: https://google.com
#     ...                     - ${supported_browser} (string) ระบบ Browser ที่รองรับ: chromium, firefox, webkit
#     ...                     - ${headless_mode} (bool) เปิด Browser ในโหมดไร้หน้าต่าง (No GUI): ${True} or ${False}
#     [Arguments]        ${url}    ${supported_browser}=${default_browser}    ${headless_mode}=${False}
#     Browser.New browser     browser=${supported_browser}    headless=${headless_mode}
#     Browser.New page        url=${url}



