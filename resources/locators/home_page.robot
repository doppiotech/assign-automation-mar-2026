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
${homepage.btn_datepicker_checkout}         id=hotel-search-checkout-date


