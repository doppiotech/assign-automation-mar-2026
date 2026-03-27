*** Keywords ***
Click accept cookie on footer
    BuiltIn.Run Keyword And Ignore Error    common_web.Click element on screen    ${cookie_element}[btn_accept_all]