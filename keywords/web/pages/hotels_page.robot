*** Keywords ***
Verify hotels page is displayed
    [Arguments]    ${timeout}=${GLOBAL_TIMEOUT}
    Browser.Wait for load state    domcontentloaded    timeout= ${timeout}
    Browser.Wait for condition    url    should end with    ${gother_hotals_url}    timeout= ${timeout}

Click for select destination
    Browser.Click    ${hotels_page.txt_search_destination}

Verify destination displayed
    Wait For Elements State    ${hotels_page.ddl_destination} >> nth=0    visible

Click for select first option
    Browser.Click    ${hotels_page.ddl_destination} >> nth=0

Click check in button
    Browser.Click    ${btn_check_in}

# Get DateTime ffff
#     ${raw_day}=      Get Current Date    result_format=%d
#     ${month_num}=    Get Current Date    result_format=%m
#     ${year}=         Get Current Date    result_format=%Y
#     ${weekday}=      Get Current Date    result_format=%w
#     # แปลงวันที่เป็นเลขโดด (ตัด 0 นำหน้า)
#     ${day}=          Evaluate    int('${raw_day}')
#     # ดึงชื่อวันและเดือน (สังเกตว่า int() จะอยู่ข้างใน Evaluate และไม่เขียว ${int} นะครับ)
#     ${day_th}=       Evaluate    ['อา.', 'จ.', 'อ.', 'พ.', 'พฤ.', 'ศ.', 'ส.'][int('${weekday}')]
#     ${month_th}=     Evaluate    ['', 'ม.ค.', 'ก.พ.', 'มี.ค.', 'เม.ย.'][int('${month_num}')]
#     ${final}=        Set Variable    ${day_th} ${day} ${month_th} ${year}
#     Log To Console   \nResult is: ${final}
#     RETURN           ${final}

# Automate Stay Dates
#     ${today_date_raw}=      Get Current Date    result_format=%d
#     # 2. ใช้ Evaluate แปลงเป็น int เพื่อตัดเลข 0 ออก (เช่น "05" -> "5")
#     ${today_date}=    Evaluate    int('${today_date_raw}')
#     ${today_month_raw}=    Get Current Date    result_format=%m
#     ${today_month}    Evaluate    int('${today_month_raw}')
#     Log To Console   \nResult is: ${today_date}
#     Log To Console   \nResult is: ${today_month}

# Navigate To Correct Month
#     # 1. เตรียมชื่อเดือนปัจจุบันภาษาไทย
#     ${current_month_num}=    Get Current Date    result_format=%m
#     ${expected_month}=       Evaluate    ['', 'มกราคม', 'กุมภาพันธ์', 'มีนาคม', 'เมษายน', 'พฤษภาคม', 'มิถุนายน', 'กรกฎาคม', 'สิงหาคม', 'กันยายน', 'ตุลาคม', 'พฤศจิกายน', 'ธันวาคม'][int('${current_month_num}')]

#     # 2. เช็คว่าบนหน้าเว็บตอนนี้ แสดงเดือนที่เราต้องการหรือยัง
#     # (สมมติ Selector ของหัวปฏิทินคือ .calendar-month-header)
#     ${actual_month}=    Get Text    div[class*="date-left"]
#     ${actual_month}=     Evaluate    '${actual_month}'.split()[0]
#     Log To Console    \nExpected is: ${expected_month}
#     Log To Console    \nActual is: ${actual_month}
    
#     # 3. ถ้าเดือนไม่ตรง (เช่น เว็บโชว์เมษายน แต่เราจะเอา มีนาคม) ให้กดปุ่มย้อนกลับ
#     IF    '${expected_month}' not in '${actual_month}'
#         Click    css=button[title="back-one-month"]  # ปุ่มลูกศรซ้าย <
#         ${actual_month}=    Get Text    div[class*="date-left"]
#         ${actual_month}=    Evaluate    '${actual_month}'.split()[0]
#         Log To Console    \nActual 2 is: ${actual_month}
#     END

#     ${today_date_raw}=      Get Current Date    result_format=%d
#     # 2. ใช้ Evaluate แปลงเป็น int เพื่อตัดเลข 0 ออก (เช่น "05" -> "5")
#     ${today_date}=    Evaluate    int('${today_date_raw}')
#     Browser.Click    css=div[class*="rdrMonth"] 

Get all infomation
    ${destination_info}=    Get Attribute    id=hotel-search-destination    value
    ${date_checkin}=    Get Attribute    id=hotel-search-checkin-date    value
    ${date_checkout}=    Get Attribute    id=hotel-search-checkout-date    value
    ${traveler_info}=   Get Attribute    id=hotel-search-traveler    value
    Log To Console      destination is: ${destination_info}
    Log To Console      Checkin info is: ${date_checkin}
    Log To Console      Checkout info is: ${date_checkout}
    Log To Console      Traveler info is: ${traveler_info}
    RETURN    ${destination_info}    ${date_checkin}    ${date_checkout}    ${traveler_info}

Click search button
    Browser.Click    ${hotels_page.btn_search}
