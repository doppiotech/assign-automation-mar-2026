*** Variables ***
${hotels_booking_locator.btn_radio_male}       css=input[type="radio"]:has(~ div > span:has-text("${translation.male}"))
${hotels_booking_locator.btn_radio_female}       css=input[type="radio"]:has(~ div > span:has-text("${translation.female}"))
${hotels_booking_locator.txt_first_name}        css=#firstName
${hotels_booking_locator.txt_last_name}        css=#lastName
${hotels_booking_locator.txt_email}             css=#hotel-booking-user-email
${hotels_booking_locator.txt_phone_number}      css=input[maxlength="10"]
${hotels_booking_locator.btn_confirm_booking}           css=#hotel-booking-button