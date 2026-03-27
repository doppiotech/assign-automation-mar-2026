*** Variables ***
&{header_bar}
...            btn_gother_logo=css=#home-button
...            btn_login_signin=css=#signin-and-register-big-button
...            btn_account_icon=css=[alt="user-icon2"]
...            btn_hotels_tab=css=#home-menu-hotel
...            btn_car_retals_tab=css=#home-menu-carrental
&{login_popup}
...            btn_email_or_mobile_login=css=button:text-is("${login_popup_page_trans}[email_or_mobile_login]")
...            txt_email_or_mobile_field=css=[data-testid="input-email"]
...            btn_login_confirm_email_or_mobile=css=[data-testid="btn-check-step-login-with-email"]
...            txt_password_field=css=[data-type="password"]
...            btn_login_confirm_password=css=[data-testid="btn-login-email-width-pass"]