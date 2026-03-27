*** Variables ***
${homepage.btn_loging}                    id=signin-and-register-big-button
${homepage.btn_mail_or_mobile}            css=button:has-text("Email or Mobile No.")
${homepage.txt.email_popuplogin}          css=[data-testid="input-email"]
${homepage.btn_login_next_step}          css=[data-testid="btn-check-step-login-with-email"]
${homepage.txt_field_pass_popuplogin}     css=[data-testid="input-password"]      
${homepage.btn_login_final_login}          css=[data-testid="btn-login-email-width-pass"]
${homepage.icon.profile}                  css=img[alt="user-icon2"]         #ตรวจ icon user หลัง login และกด icon user
${homepage.menu.myacc}                    css=span:has-text("My Account")  

${homepage.date.picker.checkin}           css=id=hotel-search-checkin-date          #คลิกปุ่ม checkin-date
${homepage.date.calendar.checkin}         css=xpath=//span[contains(@class, 'rdrDayNumber')]//span[text()='VARIABLE_DAY']       #เลือกวันที่checkin
${homepage.date.calendar.checkout}       css=xpath=//div[contains(., 'VARIABLE_MONTH')]//span[contains(@class, 'rdrDayNumber')]//span[text()='VARIABLE_DAY']     #เลือกวันที่checkout







