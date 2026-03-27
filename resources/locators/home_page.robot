*** Variables ***
${homepage.btn_loging}                      id=signin-and-register-big-button
${homepage.btn_mail_or_mobile}              css=button:has-text("Email or Mobile No.")
${homepage.txt.email_popuplogin}            css=[data-testid="input-email"]
${homepage.btn_login_next_step}             css=[data-testid="btn-check-step-login-with-email"]
${homepage.txt_field_pass_popuplogin}       css=[data-testid="input-password"]      
${homepage.btn_login_final_login}           css=[data-testid="btn-login-email-width-pass"]
${homepage.icon.profile}                    css=img[alt="user-icon2"]         #ตรวจ icon user หลัง login และกด icon user
${homepage.menu.hotel}                      id=home-menu-hotel
${homepage.txt_destination}                 id=hotel-search-destination
${homepage.item_destination_result}         xpath=//div[@id='search-suggestion-container']//*[contains(text(), 'VARIABLE_TEXT')]
${homepage.btn_datepicker_checkin}          id=hotel-search-checkin-date
${homepage.datepicker.current_month_label}    xpath=(//div[contains(@class, 'rdrMonthName')])[1]
${homepage.datepicker.btn_next_month}         xpath=//button[contains(@class, 'rdrNextButton')]
${homepage.datepicker.calendar_day}           xpath=(//div[contains(@class, 'rdrMonth')])[1]//span[contains(@class, 'rdrDayNumber')]//span[text()='VARIABLE_DAY']
${homepage.btn_guest_room}                    id=hotel-search-traveler
${homepage.btn_add_room}                      xpath=//p[text()='Rooms']/following-sibling::div//button[text()='+']
${homepage.btn_minus_room}                    xpath=//p[text()='Rooms']/following-sibling::div//button[text()='-']
${homepage.btn_add_adult}                   xpath=//p[text()='Adults']/following-sibling::div//button[text()='+']
${homepage.btn_minus_adult}                 xpath=//p[text()='Adults']/following-sibling::div//button[text()='-']
${homepage.btn_add_child}                   xpath=//p[text()='Children']/following-sibling::div//button[text()='+']
${homepage.btn_minus_child}                 xpath=//p[text()='Children']/following-sibling::div//button[text()='-']
${homepage.btn_guest_confirm}               xpath=//button[text()='Confirm']

# ${homepage.btn_search}                      id=hotel-search-button




