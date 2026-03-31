*** Keywords ***
Click accept cookies
    Browser.Wait For Elements State    selector=${bottom_bar_locator.btn_accept_cookies}    state=visible     timeout=${5S_TIMEOUT}
    Browser.Click   selector=${bottom_bar_locator.btn_accept_cookies}