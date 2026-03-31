*** Keywords ***
Verify booking success
    Browser.Wait For Elements State    selector=${booking_success_locator.txt_booking_success}    state=visible     timeout=${20S_TIMEOUT}
    ${text_booking_success}=   Browser.Get Text   selector=${booking_success_locator.txt_booking_success}
    BuiltIn.Should Be Equal     first=${text_booking_success}     second=${translation.booking_sucess}
    