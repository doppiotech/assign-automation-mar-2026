*** Keywords ***
Verify hotel name on detail page is correct
    [Arguments]    ${expected_name}    ${timeout}=${globle_timeout}
    #รอให้ h1 ที่เป็นชื่อโรงแรมแสดงผล และมีข้อความข้างใน (ไม่ใช่ค่าว่าง)
    Browser.Wait For Elements State    ${hotel_detail.txt_name}    visible    timeout=${timeout}
    #Get Text ของชื่อโรงแรม ต้องเท่ากับ ชื่อที่เราคาดหวัง"
    Browser.Get Text    ${hotel_detail.txt_name}    ==    ${expected_name}
    Log     Verified Hotel: ${expected_name}

Click book now button 
    [Arguments]    ${timeout}=${globle_timeout}
    Browser.Wait For Elements State    ${hotel_detail.btn_book_now_id}     attached    timeout=${timeout}
    Browser.Scroll To Element    ${hotel_detail.btn_book_now_id} 
    Browser.Wait For Elements State    ${hotel_detail.btn_book_now_id}     visible    timeout=${timeout}
    Browser.Click    ${hotel_detail.btn_book_now_id} 
