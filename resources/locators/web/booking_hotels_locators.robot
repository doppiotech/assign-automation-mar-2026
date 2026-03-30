*** Variables ***
#Booking page
${booking_hotels_locators.booking_page}                                       css=div [class^="booking-page"]
${booking_hotels_locators.btn_confirm_booking}                                css=#hotel-booking-button


#Contact Information
${booking_hotels_locators.rdo_male_button}                                    css=input[value="Mr"]
${booking_hotels_locators.rdo_female_button}                                  css=input[value="Ms"]
${booking_hotels_locators.txt_first_name}                                     css=input#firstName
${booking_hotels_locators.txt_last_name}                                      css=input#lastName
${booking_hotels_locators.txt_email}                                          css=input#hotel-booking-user-email
${booking_hotels_locators.txt_phone}                                          css=input[name="phone"]

${booking_hotels_locators.txt_hotel_name}                                     css=#hotel-booking-hotel-name
${booking_hotels_locators.txt_checkin_date}                                   css=#hotel-booking-check-in
${booking_hotels_locators.txt_checkout_date}                                  css=#hotel-booking-check-out
