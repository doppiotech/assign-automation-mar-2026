*** Keywords ***
Click login/signup button
    Browser.Click    selector=${nav_bar_locator.btn_login&signup}

Click hotel tab
    Browser.Wait For Elements State    selector=${nav_bar_locator.tab_hotels}    state=visible     timeout=${10S_TIMEOUT}
    Browser.CLick   selector=${nav_bar_locator.tab_hotels}