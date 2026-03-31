*** Keywords ***
Input credit card number
    [Arguments]     ${cardnum}
    Browser.Fill text         ${creditcard_locator.txt_cardnumber}        ${cardnum}      
    Browser.Wait for elements state     ${creditcard_locator.txt_cardnumber}   visible     timeout=10000  

Input holder name
    [Arguments]     ${card_name}
    Browser.Fill text        ${creditcard_locator.txt_cardname}         ${card_name}
    Browser.Wait for elements state     ${creditcard_locator.txt_cardname}    visible     timeout=10000

Input expire date card
    [Arguments]     ${expire_date}
    Browser.Fill text        ${creditcard_locator.txt_expire_date}      ${expire_date}
    Browser.Wait for elements state     ${creditcard_locator.txt_expire_date}   visible     timeout=10000

Input cvv card
    [Arguments]     ${cvv}
    Browser.Fill text        ${creditcard_locator.txt_cvv}      ${cvv}
    Browser.Wait for elements state     ${creditcard_locator.txt_cvv}   visible     timeout=10000
    
Click accept payment
    Browser.Click            ${creditcard_locator.btn_accept_payment} 
    Browser.Wait for elements state     ${creditcard_locator.btn_accept_payment}   visible     timeout=10000

Click confirm payment
    Browser.Click           ${creditcard_locator.btn_confirm_payment} 