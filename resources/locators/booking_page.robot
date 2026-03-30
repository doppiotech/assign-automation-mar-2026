*** Variables ***
${bookingpage.expected_hotel_name}              id=hotel-booking-hotel-name
${bookingpage.checkout.txt_checkin_date}        id=hotel-booking-check-in
${bookingpage.checkout.txt_checkout_date}       id=hotel-booking-check-out
${bookingpage.checkout.txt_guest_type}          css=div:text-is("Type") + div p.label       #Sibling คือหา div ที่มีคำว่า Type เป๊ะๆ แล้วกระโดดไปหา p ที่อยู่ข้างๆ กัน
${bookingpage.checkout.txt_total_price}         css=div:has(p:text-is("Including taxes and fees")) + h2
${bookingpage.checkout.section_gender}          css=div:has(> label p:text-is("Gender"))
${bookingpage.checkout.radio_gender_male}       css=input[value="Mr"]
${bookingpage.checkout.radio_gender_female}     css=input[value="Ms"]




${bookingpage.checkout.btn_confirm_booking}     id=hotel-booking-button
