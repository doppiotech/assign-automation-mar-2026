*** Variables ***
${homepage.btn_accept_all_cookie}           css=button:text-is("${page.home_page.btn_accept_all_cookie}")
${homepage.btn_loging}                      id=signin-and-register-big-button
${homepage.btn_mail_or_mobile}              css=button:has-text("${page.home_page.btn_mail_or_mobile}")
${homepage.txt.email_popuplogin}            css=[data-testid="input-email"]
${homepage.btn_login_next_step}             css=[data-testid="btn-check-step-login-with-email"]
${homepage.txt_field_pass_popuplogin}       css=[data-testid="input-password"]      
${homepage.btn_login_final_login}           css=[data-testid="btn-login-email-width-pass"]
${homepage.icon.profile}                    css=img[alt="user-icon2"]         #ตรวจ icon user หลัง login และกด icon user
${homepage.menu.hotel}                      id=home-menu-hotel
${homepage.txt_destination}                 id=hotel-search-destination
${homepage.input_search_destination}        css=input#hotel-search-destination
${homepage.container_suggestions}           css=#search-suggestion-container
${homepage.btn_datepicker_checkin}          id=hotel-search-checkin-date
${homepage.lbl_datepicker_month_year}       css=.rdrMonthName
${homepage.btn_datepicker_next}             css=button.rdrNextButton
${homepage.calendar_day}                    css=.rdrDay:not(.rdrDayPassive)
${homepage.btn_guest_room}                  id=hotel-search-traveler

# --- Rooms ---
${homepage.btn_add_room}            css=button:has-text("+"):right-of(:text-is("Rooms"))
${homepage.btn_minus_room}          css=button:has-text("-"):right-of(:text-is("Rooms"))
${homepage.txt_current_rooms}       css=div.body:right-of(:text-is("Rooms"))
# --- Adults ---
${homepage.btn_add_adult}           css=button:has-text("+"):right-of(:text-is("Adults"))
${homepage.btn_minus_adult}         css=button:has-text("-"):right-of(:text-is("Adults"))
${homepage.txt_current_adults}      css=div.body:right-of(:text-is("Adults"))
# --- Children ---
${homepage.btn_add_child}           css=button:has-text("+"):right-of(:text-is("Children"))
${homepage.btn_minus_child}         css=button:has-text("-"):right-of(:text-is("Children"))
${homepage.txt_current_children}    css=div.body:right-of(:text-is("Children"))

${homepage.btn_guest_confirm}      css=button:text-is("Confirm")
${homepage.btn_search_submit}      id=hotel-search-button








 