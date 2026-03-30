*** Variables ***
#Booking page
${booking_hotels_locators.booking_page}                                       css=div [class^="booking-page"]
${booking_hotels_locators.btn_confirm_booking}                                css=#hotel-booking-button, [type="submit"]


#Contact Information
${booking_hotels_locators.rdo_male_button}                                    css=[value="Mr"]
${booking_hotels_locators.rdo_female_button}                                  css=[value="Ms"]
${booking_hotels_locators.txt_first_name}                                     css=input#firstName
${booking_hotels_locators.txt_last_name}                                      css=input#lastName
${booking_hotels_locators.txt_email}                                          css=input#hotel-booking-user-email
${booking_hotels_locators.txt_phone}                                          css=input[name="phone"]