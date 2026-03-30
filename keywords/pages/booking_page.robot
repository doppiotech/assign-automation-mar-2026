*** Keywords ***
Verify hotel name on checkout page is correct
    [Arguments]    ${expected_hotel_name}   ${timeout}=${globle_timeout}
    Browser.Wait For Elements State    ${bookingpage.expected_hotel_name}    visible    timeout=${timeout}
    ${actual_name}=    Browser.Get Text    ${bookingpage.expected_hotel_name}
    # ตรวจสอบว่าชื่อตรงกับที่เลือกมาตอนแรกไหม
    BuiltIn.Should Be Equal As Strings    ${actual_name}    ${expected_hotel_name}

Verify guest type on checkout page is correct
    [Arguments]    ${expected_guest}    ${timeout}=${globle_timeout}
    Browser.Wait For Elements State    ${bookingpage.checkout.txt_guest_type}    visible    timeout=${timeout}
    ${actual_type}=    Browser.Get Text    ${bookingpage.checkout.txt_guest_type}
    BuiltIn.Should Contain    ${actual_type}    ${expected_guest}

Verify total price on checkout page is correct
    [Arguments]    ${expected_price}    ${timeout}=${globle_timeout}
    Browser.Scroll To Element    ${bookingpage.checkout.txt_total_price} 
    Browser.Wait For Elements State    ${bookingpage.checkout.txt_total_price}     visible    timeout=${timeout}
    ${actual_price}=    Browser.Get Text    ${bookingpage.checkout.txt_total_price} 
    BuiltIn.Should Contain    ${actual_price}    ${expected_price}
    BuiltIn.Log    Actual Total Price found: ${actual_price}

Click confirm booking button
    [Arguments]    ${timeout}=${globle_timeout}
    # 1. เลื่อนหน้าจอไปที่ปุ่ม
    Browser.Scroll To Element    ${bookingpage.checkout.btn_confirm_booking}
    Browser.Wait For Elements State    ${bookingpage.checkout.btn_confirm_booking}    visible    timeout=${timeout}
    Browser.Click    ${bookingpage.checkout.btn_confirm_booking}