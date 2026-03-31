*** Settings ***
Resource        ${CURDIR}/../../resources/import.robot

Test Setup           BuiltIn.Run keywords
...                  landing_page.Open gother web    AND
...                  common_web.Login with email    ${account}[email]    ${account}[password]    AND
...                  footer.Click accept cookie on footer
Test Teardown        common_web.Web teardown

*** Test Cases ***
TC_HOTELS_001 - Verify Hotel Booking with Credit Card Payment
    [Tags]    Feature:Hotels
    header_bar.Click hotels tab on header bar
    ${destination}    hotels_feature.Search destination by typing                           ${booking_information}[destination]
    hotels_page.Click check in date section
    common_feature.Find today date on calendar and select today date
    common_feature.Select period from selected date to target days        ${booking_information}[days_to_book]
    hotels_page.Click guests and rooms section
    hotels_feature.Adjust rooms amount to                                 ${booking_information}[rooms_amount]
    hotels_feature.Adjust adults amount to                                ${booking_information}[adults_amount]
    hotels_feature.Adjust children amount                                 ${booking_information}[children_amount]
    hotels_feature.Select children age                                    ${booking_information}[children_1][index]    ${booking_information}[children_1][age]
    hotels_feature.Select children age                                    ${booking_information}[children_2][index]    ${booking_information}[children_2][age]
    hotels_page.Click confirm guests and rooms
    ${checkin_date}
    ...    ${checkout_date}
    ...    ${guests_and_rooms}
    ...    hotels_feature.Get search information
    hotels_page.Click search button
    hotels_search_result_page.Check if search result page display
    hotels_search_result_feature.Verify search criteria match with input
    ...    ${destination}
    ...    ${checkin_date}
    ...    ${checkout_date}
    ...    ${guests_and_rooms}
    hotels_search_result_page.Select hotel by index from search result    ${booking_information}[hotel_index]
    common_web.Switch to new tab
    Debug
    hotels_item_page.Check if hotels item display
    ${hotel_name}    hotels_item_page.Get hotel name
    ${room_type}     hotels_item_page.Get room type                       ${booking_information}[room_index]
    hotels_item_page.Book room by index                                   ${booking_information}[room_index]
    booking_page.Check if booking page display
    booking_feature.Verify booking details match with selection
    ...    ${hotel_name}
    ...    ${room_type}
    booking_page.Select gender                                            ${account}[gender]
    booking_feature.Input contact information
    ...    ${account}[first_name]
    ...    ${account}[last_name]
    ...    ${account}[email]
    ...    ${account}[country_name]
    ...    ${account}[phone]
    ...    ${account}[country_name]
    booking_page.Click confirm booking button
    payment_page.Check if payment page display
    payment_page.Select credit card as payment method
    payment_feature.Input credit card information
    ...    ${credit_card_information}[card_num]
    ...    ${credit_card_information}[card_holder_name]
    ...    ${credit_card_information}[card_exp]
    ...    ${credit_card_information}[card_cvv]
    payment_page.Click pay now button to confirm payment
    payment_success_page.Check if success page display
