*** Keywords ***
Click login signup button
    [Arguments]     ${timeout}=${globle_timeout}
    Browser.Wait for elements state     ${homepage.btn_loging}       visible    timeout=${timeout}
    Browser.Click    ${homepage.btn_loging}       

Click email or mobile no. button
    [Arguments]     ${timeout}=${globle_timeout}
    Browser.Wait for elements state     ${homepage.btn_mail_or_mobile}       visible    timeout=${timeout}
    Browser.Click    ${homepage.btn_mail_or_mobile}   

Fill info in field email 
    [Arguments]     ${user_account}  
    Browser.Fill text   ${homepage.txt.email_popuplogin}      ${user_account.email} 

Click login button
    [Arguments]     ${timeout}=${globle_timeout}
    Browser.Wait for elements state     ${homepage.btn_login_next_step}      visible    timeout=${timeout}
    Browser.Click    ${homepage.btn_login_next_step}   

Fill info in field password 
    [Arguments]     ${user_account}  
    Browser.Fill text   ${homepage.txt_field_pass_popuplogin}     ${user_account.password} 

Click login in popup loging 
    [Arguments]     ${timeout}=${globle_timeout}
    Browser.Wait for elements state     ${homepage.btn_login_final_login}          visible    timeout=${timeout}
    Browser.Click   ${homepage.btn_login_final_login}   

Verify login success
    [Arguments]    ${timeout}=${globle_timeout}
    Browser.Wait for elements state    ${homepage.icon.profile}    visible    timeout=${timeout}
    Browser.Get Element States    ${homepage.icon.profile}    contains    visible 


