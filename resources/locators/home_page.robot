*** Variables ***
${homepage.btn_accept_all_cookie}           css=button:text-is("Accept All")
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

${homepage.btn_add_room}         xpath=(//button[text()='+'])[1]
${homepage.btn_minus_room}       xpath=(//button[text()='-'])[1]

${homepage.btn_add_adult}        xpath=(//button[text()='+'])[2]
${homepage.btn_minus_adult}      xpath=(//button[text()='-'])[2]

${homepage.btn_add_child}        xpath=(//button[text()='+'])[3]
${homepage.btn_minus_child}      xpath=(//button[text()='-'])[3]

${homepage.txt_current_rooms}      xpath=(//div[contains(@class,'w-[20px]')])[1]
${homepage.txt_current_adults}     xpath=(//div[contains(@class,'w-[20px]')])[2]
${homepage.txt_current_children}   xpath=(//div[contains(@class,'w-[20px]')])[3]

${homepage.btn_guest_confirm}      xpath=//button[text()='Confirm']
${homepage.btn_search_submit}      id=hotel-search-button








