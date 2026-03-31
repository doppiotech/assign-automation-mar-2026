*** Keywords ***
Verify payment successfully
    ${text_payment_success}=        String.Replace string    ${hotels_payment_success_page_locators.lbl_payment_success}    {t_payment_success}    ${payment_success_page.t_payment_success} 
    Browser.Wait for elements state    ${text_payment_success}      visible    ${global_timeout} 
    ${text_booking_confirmation}=        String.Replace string    ${hotels_payment_success_page_locators.lbl_payment_success}    {t_text_booking_confirmation}    ${payment_success_page.t_text_booking_confirmation} 
    Browser.Wait for elements state    ${text_booking_confirmation}     visible    ${global_timeout} 
    ${text_system_will_send_your_booking}=        String.Replace string    ${hotels_payment_success_page_locators.lbl_payment_success}    {t_text_system_will_send_your_booking}    ${payment_success_page.t_text_system_will_send_your_booking} 
    Browser.Wait for elements state    ${text_system_will_send_your_booking}     visible    ${global_timeout} 