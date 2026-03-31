*** Variables ***
${hotel_informaion.TXT_HOTEL_NAME}    css=div[id*="hotels"]:has(div:text-is("@#hotel_name@#"))
${hotel_informaion.BTN_BOOKING}    css=button#hotel-cart-button-0-0
${hotel_informaion.TXT_TOTAL_PRICE}    css=h2#hotel-cart-price-0-0