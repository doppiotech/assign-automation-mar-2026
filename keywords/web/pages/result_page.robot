*** Keywords ***
Verify result page is displayed
    [Arguments]    ${timeout}=${GLOBAL_TIMEOUT}
    Browser.Wait for load state    domcontentloaded    timeout= ${timeout}
    Browser.Get Url    validate    "https://www.gother.online/th-th/hotels/search" in value    timeout= ${timeout}

# Get all result page infomation
#     ${actal_result_destination_info}=    Get Attribute    id=hotel-search-destination    value
#     ${actal_result_date_checkin}=    Get Attribute    id=hotel-search-checkin-date    value
#     ${actal_result_date_checkout}=    Get Attribute    id=hotel-search-checkout-date    value
#     ${actal_result_traveler_info}=   Get Attribute    id=hotel-search-traveler    value
#     Log To Console      actal destination is: ${actal_result_destination_info}
#     Log To Console      actal Checkin info is: ${actal_result_date_checkin}
#     Log To Console      actal Checkout info is: ${actal_result_date_checkout}
#     Log To Console      actal Traveler info is: ${actal_result_traveler_info}
#     RETURN    ${actal_result_destination_info}    ${actal_result_date_checkin}    ${actal_result_date_checkout}    ${actal_result_traveler_info}

Verify infomation between pages
    ${exp_dest}  ${exp_in}  ${exp_out}  ${exp_guest}=    Get all infomation
    ${act_dest}  ${act_in}  ${act_out}  ${act_guest}=    Get all infomation
    Should Contain     ${act_dest}     ${exp_dest}
    Should Be Equal    ${act_in}       ${exp_in}
    Should Be Equal    ${act_out}      ${exp_out}
    Should Be Equal    ${act_guest}    ${exp_guest}

# Scroll To Load More Rooms
#     [Arguments]    ${repeat}=3
#     FOR    ${i}    IN RANGE    ${repeat}
#         # เลื่อนลงไปหาใบสุดท้าย
#         Scroll To Element    css=.infinite-scroll-component__outerdiv [class*="order-"]:last-child
#         # รอจังหวะให้ API ดึงข้อมูล (Network Idle) หรือรอ Spinner หายไป
#         Sleep    1.5s
#     END

# Room count
#     Wait For Elements State    css=.infinite-scroll-component__outerdiv [class*="order-"]    visible    timeout=5s
#     ${room_count}=    Get Element Count    css=.infinite-scroll-component__outerdiv [class^="order-"]
#     Log To Console    Total: ${room_count}

Select hotel from the search results
    [Arguments]    ${timeout}=${GLOBAL_TIMEOUT}
    Browser.Wait for load state    domcontentloaded    timeout= ${timeout}
    Browser.Click    ${result_page.lis_card} >> nth=0
    Browser.Switch Page      NEW


Verify result after select hotel is displayed
    [Arguments]    ${timeout}=${GLOBAL_TIMEOUT}
    Browser.Wait for load state    domcontentloaded    timeout= ${timeout}

Select a room and click book now
    Wait For Elements State    ${btn_booking_now} >> nth=0    visible
    Browser.Click    ${btn_booking_now} >> nth=0