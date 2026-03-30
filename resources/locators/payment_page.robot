*** Variables ***
${payment.input_card_number}        css=input[name="card_number_input_buynowpaylater"]
${payment.input_card_name}          id=card_name_buynowpaylater
${payment.input_expiry_date}        id=expire_of_creditcard_buynowpaylater
${payment.input_cvv}                id=securityCode_buynowpaylater
${payment.span_checkbox_save_card}  css=span.cbx
${payment.btn_confirm_booking}      css=button#confirmBooking2 >> visible=true