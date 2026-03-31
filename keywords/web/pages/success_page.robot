*** Keywords ***
Verify booking success
    Browser.Wait for elements state    ${success_locator.btn_view_booking}     visible    
    ${text}=    Get Text    ${success_locator.btn_view_booking} 
    BuiltIn.Should contain    ${text}    ${translation.btn_view_booking}