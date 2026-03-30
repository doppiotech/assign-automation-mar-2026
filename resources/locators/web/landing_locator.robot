*** Variables ***
${landing.BTN_SEARCH_FLIGTH}    css=button#flight-search-button>>nth=0
${landing.BTN_LOGIN_AND_REGIS}    css=button#signin-and-register-big-button
${landing.BTN_PHONE_OR_EMAIL}    css=button >> text=${landing_page.BTN_Phone_Email}
${landing.TXT_Email}    css=input[data-testid="input-email"]
${landing.TXT_Password}    css=input[data-testid="input-password"]
${landing.BTN_LOGIN}    css=button:text-is("${landing_page.BTN_LOGIN}")
${landing.IMG_USER_ICON}    css=img[alt="user-icon2"]
${landing.BTN_MY_ACC}    css=span:text-is("${landing_page.BTN_MY_ACC}")
${landing.TXT_DISPLAY_EMAIL}    css=div:has(p:text-is("${landing_page.TXT_DISPALY_EMAIL}")) >> p >> nth=15
${landing.BTN_HOTEL}    css=a#home-menu-hotel>span:text-is("${landing_page.BTN_HOTEL}")
${landing.BTN_ACCEPT_COOKIE}    css=button:text-is("${landing_page.BTN_ACCEPT_COOKIE}")