*** Settings ***
Library     Browser     strict=${FALSE}
Library     String

*** Variables ***
${headless}    ${FALSE}

*** Keywords ***
Open web gother
    Browser.New Browser    browser=chromium    headless=${headless}    timeout=60s
    Browser.New Context    
    Browser.New Page       https://www.gother.online/en-us 

Click log in/sign up button
    Browser.Wait For Elements State      id=signin-and-register-big-button     visible    timeout=10s
    Browser.Click                        id=signin-and-register-big-button





*** Test Cases ***
TC-BASIC Keywords 02
    Open web gother
    Click log in/sign up button








# Click profile icon
#     Browser.Wait For Elements State     css=[data-nav*=button0-svg0-path0]  visible    timeout=5s
#     Browser.Click    css=[data-nav*=button0-svg0-path0]  #*= เพื่อบอกว่า "ขอแค่มีคำนี้อยู่ในชื่อ"
    
# Click singin menu
#     Browser.Wait For Elements State    css=[data-testid="nav-account-signin"]    visible    timeout=10s
#     Browser.Click    css=[data-testid="nav-account-signin"]
    
# Click create account button in singin page
#     Browser.Wait For Elements State    css=[data-signin="signin-form0-div7-a1"]    visible    timeout=10s
#     Browser.Click    css=[data-signin="signin-form0-div7-a1"]
   
# Fill info in section create account 
#     [Arguments]     ${full_name}=sutida   ${mobile}=0888888888  ${email}=doppio@gmail.com   ${password}=Test12345   ${cf_password}=Test12345    
#     Browser.Fill text   css=[data-testid="signup-fullname"]     ${full_name}  
#     Browser.Fill text   css=[data-testid="signup-phone"]        ${mobile}
#     Browser.Fill text   css=input[type="email"]                 ${email}
#     Browser.Fill text   css=input[type="password"]              ${password}
#     Browser.Fill text   css=[data-testid="signup-confirm"]      ${cf_password}

# Generate Random Email
#     ${random_str}=    Generate Random String    9    [NUMBERS]
#     ${new_email}=     Set Variable    nook_${random_str}@test.com
#     RETURN    ${new_email}

# Click create account button in create account page
#     Browser.Click       css=[data-testid="signup-submit"]

# verify user logged in 
#     [Arguments]    ${expected_email}=doppio@gmail.com
#     Browser.Wait For Elements State    text="${expected_email}"    visible    timeout=15s
#     Browser.Get Text    css=#btn-account    contains    ${expected_email}












#     Click profile icon
#     Click singin menu
#     Click create account button in singin page
#     ${random_mail}=     Generate Random Email
#     Fill info in section c    reate account   email=${random_mail} 
#     Click create account button in create account page
#     verify user logged in       ${random_mail}
#     log to console  ${random_mail}
    
















