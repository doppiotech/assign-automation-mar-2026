*** Keywords ***
Select Hotel By Name
    [Arguments]    ${hotel_name}
    # Replace ***hotel_name*** ด้วยชื่อโรงแรมจริง
    ${hotel}=         String.Replace string    ${hotel_locator.lbl_hotel_name}    ***hotel_name***    ${hotel_name}
    # รอให้ element โหลดก่อน
    Browser.Wait for elements state    ${hotel}    visible    timeout=10000
    # เทียบชื่อโรงแรม
    ${actual_name}=    Browser.Get text    ${hotel}
    BuiltIn.Should Contain     ${actual_name}    ${hotel_name}
    Browser.Click    ${hotel}
    RETURN    ${actual_name}
    # Wait For Load State    networkidle

Select a room and click book now
    # Browser.Wait for elements state     ${hotel_locator.btn_book_hotel}     visible 
    Browser.Click   ${hotel_locator.btn_book_hotel} 
