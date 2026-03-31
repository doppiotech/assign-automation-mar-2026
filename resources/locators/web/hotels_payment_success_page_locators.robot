*** Variables ***
${hotels_payment_success_page_locators.lbl_payment_success}               css=h3.text-xl.font-bold:text-is("{t_payment_success}")
${hotels_payment_success_page_locators.btn_view_my_booking}               css=a[title="View My Booking"]
${hotels_payment_success_page_locators.btn_back_to_home}                  css=a[title="Back to Home"]


${hotels_payment_success_page_locators.lbl_text_booking_confirmation}                      css=span.text-darkGrey:text-is("{t_text_booking_confirmation}")
${hotels_payment_success_page_locators.lbl_text_system_will_send_your_booking}             css=p.text-darkGrey span:text-is("{t_text_system_will_send_your_booking}")
${hotels_payment_success_page_locators.lbl_text_email_address}                             css=span[class$=text-darkGrey]:text-is("{email_address}")