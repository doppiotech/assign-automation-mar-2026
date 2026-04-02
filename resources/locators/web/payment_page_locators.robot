*** Variables ***
${payment_page_locators.txt_card_number}                css=[id^="card_number"]
${payment_page_locators.txt_card_name}                  css=input[id^="card-name"]
${payment_page_locators.txt_expiry_date}                css=[id^="card-expiry"]
${payment_page_locators.txt_cvv}                        css=[data-encrypt="cvv"]
${payment_page_locators.btn_confirm_booking}            css=button#confirmBooking2
${payment_page_locators.chk_automatic_payment}          css=input[name^="check_accecpt"] + span.cbx