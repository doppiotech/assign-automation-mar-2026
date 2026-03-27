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

Click tap hotels
    [Arguments]     ${timeout}=${globle_timeout}
    Browser.Wait for elements state     ${homepage.menu.hotel}          visible    timeout=${timeout}
    Browser.Click   ${homepage.menu.hotel}   

Click textbox in section destinatio
    [Arguments]     ${timeout}=${globle_timeout}
    Browser.Wait for elements state     ${homepage.txt_destination}           visible    timeout=${timeout}
    Browser.Click   ${homepage.txt_destination}   

Input destination
    [Arguments]    ${text}      ${timeout}=${globle_timeout}
    Browser.Wait for elements state    id=hotel-search-destination    visible    timeout=${timeout}
    Browser.Fill Text    id=hotel-search-destination    ${text}

Select destination from dropdown
    [Arguments]    ${city_name}    ${timeout}=${globle_timeout}
    # 1. ใช้ String.Replace String เพื่อเปลี่ยน VARIABLE_TEXT เป็นชื่อเมืองจริง
    ${dynamic_locator}=    String.Replace String    ${homepage.item_destination_result}    VARIABLE_TEXT    ${city_name}
    Browser.Wait for elements state    ${dynamic_locator}    visible    timeout=${timeout}
    Browser.Click    ${dynamic_locator}

