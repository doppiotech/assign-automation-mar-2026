*** Variables ***
${btn_accept_cookie}    css=div[id="CookiesBar"] button:has-text("ยอมรับทั้งหมด")

${landing.btn_login_and_register}    css=button[id="signin-and-register-big-button"]
${landing.btn_email_or_mobile}    css=button[type="button"]:text-is("อีเมลหรือเบอร์มือถือ")
${landing.txt_email}    css=input[data-type="email"]
${landing.btn_login}    css=button[type="submit"]
${landing.txt_password}    css=input[type="password"]
${landing.img_user}    css=img[alt*="user"]
${landing.btn.hotels}    css=a[id="home-menu-hotel"]

${hotels_page.txt_search_destination}    css=button input[id="hotel-search-destination"]
${hotels_page.ddl_destination}    css=div[class*="size-full"] button[id="hotel-search-suggestion"]
${btn_check_in}    css=input[id="hotel-search-checkin-date"]
${hotels_page.btn_search}    css=button[id="hotel-search-button"]

${result_page.lis_card}    css=a[id^="hotel-item-card"]

${btn_booking_now}    css=button[id^="hotel-cart-button"]

${booking_page.rdo_sex}    css=input[value="Mr"]
${booking_page.txt_first_name}    css=input[id="firstName"]
${booking_page.txt_last_name}    css=input[id="lastName"]
${booking_page.txt_email}    css=input[data-type="email"]
${booking_page.txt.mobile_number}    css=input[data-type="tel"]
${booking_page.btn_confirm_booking}    css=button[id="hotel-booking-button"]
# ${booking_page.rdo_paylater}    css

${payment_page.rdo_credit_card}    css=input[id="CREDIT_RADIO"]
${test}    css=[class*="title-payment-channel"]