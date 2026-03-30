*** Keywords ***
Click accept cookie on footer
    BuiltIn.Run keyword and ignore error    common_web.Click element on screen    ${cookie_element}[btn_accept_all]
