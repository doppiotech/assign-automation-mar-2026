*** Keywords ***
Login with email or mobile no. method
    [Arguments]        ${email}           ${password}     
    login_popup_page.Click login or sign up button on home page
    login_popup_page.Click login with email or mobile no.