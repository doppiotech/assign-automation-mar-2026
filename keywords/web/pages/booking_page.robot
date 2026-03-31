*** Keywords ***
Select credit card payment
    Browser.Click       ${booking_locator.btn_credit_card}


Click confirm booking
    Browser.Wait for elements state     ${booking_locator.btn_credit_card}     visible
    Browser.Click       ${booking_locator.btn_confirm} 