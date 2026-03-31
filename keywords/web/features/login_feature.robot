*** Keywords ***
Login
    [Documentation]     This kw will login into Gother website which required ${email},${password}
    ...                Arguments:
    ...                    - ${email}        (string)        :    autotest@gmail.com
    ...                    - ${password}        (string)        :    Password123
    [Arguments]     ${email}    ${password}     
    nav_bar_page.Click login/signup button
    login_signup_page.Click email or mobile no. button
    login_signup_page.Fill email        email=${email} 
    login_signup_page.Click login after fill email
    login_signup_page.Fill password     password=${password}       
    login_signup_page.Click login after fill password