*** Keywords ***
Click login signup button
[Arguments]     ${timeout}=${globle_timeout}
    Browser.Wait for elements state     ${homepage.btn_sing_and_regis}    visible    timeout=${timeout}
    Browser.Click    ${homepage.btn_sing_and_regis}    

