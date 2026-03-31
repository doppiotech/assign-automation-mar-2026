*** Keywords ***
Verify system can redirect to hotel information page
    [Arguments]    ${hotel_name}    ${timeout}=${default_timeout}
    [Documentation]     1. สั่งให้ Browser สลับโฟกัสไปที่แท็บล่าสุดที่เพิ่งเปิดขึ้นมาใหม่
    Browser.Switch page    NEW
    ${hotel_locator}=    String.Replace string    ${hotel_informaion.TXT_HOTEL_NAME}    @#hotel_name@#    ${hotel_name}
    Browser.Wait for elements state    ${hotel_locator}    timeout=${timeout}

Click on book now button
    [Arguments]    ${timeout}=${default_timeout}
    Browser.Wait for elements state    ${hotel_informaion.BTN_BOOKING}    visible    timeout=${timeout}
    Browser.Scroll to element    ${hotel_informaion.BTN_BOOKING} 
    Browser.Wait for elements state    ${hotel_informaion.BTN_BOOKING}    timeout=${timeout}
    Browser.Click    ${hotel_informaion.BTN_BOOKING}

Get And Verify Total Price
    [Documentation]    1. สั่งลบคำว่า "ราคาทั้งหมด", "Total Price", "THB", "ลูกน้ำ (,)", และ "การเว้นวรรค" ทิ้ง 
    ...                2. แปลงเป็น Integer
    ${raw_text}=    Browser.Get Text    ${hotel_informaion.TXT_TOTAL_PRICE}
    ${cleaned_string}=    String.Remove string    ${raw_text}    ${hotel_information_page.TXT_TOTAL_PRICE}    THB    ,    ${SPACE}
    ${final_price}=    BuiltIn.Convert to integer    ${cleaned_string}
        RETURN    ${final_price}