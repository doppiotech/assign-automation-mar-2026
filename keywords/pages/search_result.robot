*** Keywords ***
Verify search results summary is correct
    [Arguments]     ${expected_dest}     ${expected_checkin}    ${expected_checkout}      ${expected_guests}
    #Get ค่ามาเก็บไว้ในตัวแปร ${actual_dest}
    ${actual_dest}=    Browser.Get Attribute    ${search_result.txt_summary_destination}    value
    #เช็คว่าค่าที่ได้ตรงกับ expect ใน YAML มั้ย
    BuiltIn.Should Contain    ${actual_dest}    ${expected_dest}
    ${actual_checkin}=    Browser.Get Attribute    ${search_result.txt_summary_checkin}    value
    BuiltIn.Should Contain    ${actual_checkin}    ${expected_checkin}
    ${actual_checkout}=    Browser.Get Attribute    ${search_result.txt_summary_checkout}    value
    BuiltIn.Should Contain    ${actual_checkout}    ${expected_checkout}
    ${actual_guests}=    Browser.Get Attribute    ${search_result.txt_summary_guests}    value
    BuiltIn.Should Contain    ${actual_guests}    ${expected_guests}

Select hotel by name
    [Arguments]    ${hotel_name}
    # สร้าง Dynamic XPath เพื่อหาการ์ดโรงแรมที่มี title ตรงกับที่ระบุ
    ${hotel_card}=    Set Variable    xpath=//a[@title='${hotel_name}']
    BuiltIn.Log   \n[ACTION] Selecting Hotel: ${hotel_name}
    # รอให้การ์ดโรงแรมปรากฏและเลื่อนไปหา (Scroll) ก่อนคลิก
    Browser.Wait for elements state    ${hotel_card}    visible    timeout=15s
    Browser.Click    ${hotel_card}
    Sleep    10s

    