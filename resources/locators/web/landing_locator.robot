*** Variables ***
${landing.BTN_SEARCH_FLIGTH}    css=button#flight-search-button>>nth=0
${landing.BTN_LOGIN_AND_REGIS}    css=button#signin-and-register-big-button
${landing.BTN_PHONE_OR_EMAIL}    css=button >> text=${landing_page.BTN_Phone_Email}
${landing.TXT_Email}    css=input[data-testid="input-email"]
${landing.TXT_Password}    css=input[data-testid="input-password"]
${landing.BTN_LOGIN}    css=button:text-is("${landing_page.BTN_LOGIN}")