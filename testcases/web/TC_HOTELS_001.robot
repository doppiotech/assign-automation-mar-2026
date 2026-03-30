*** Settings ***
Resource        ${CURDIR}/../../resources/import.robot

Test Setup           BuiltIn.Run keywords
...                  landing_page.Open gother web    AND
...                  common_web.Login with email    ${account}[email]    ${account}[password]
Test Teardown        common_web.Web teardown

*** Test Cases ***
TC_HOTELS_001 - Verify Hotel Booking with Credit Card Payment
    [Tags]    Feature:Hotels
    header_bar.Click hotels tab on header bar
    hotels_feature.Search destination by typing                           ${booking_information}[destination]
    hotels_page.Click check in date section
    common_feature.Find today date on calendar and select today date
    common_feature.Select period from selected date to target days        ${booking_information}[days_to_book]
    hotels_page.Click guests and rooms section
    hotels_feature.Adjust rooms amount to                                 ${booking_information}[rooms_amount]
    hotels_feature.Adjust adults amount to                                ${booking_information}[adults_amount]
    hotels_feature.Adjust children amount and select age                  ${booking_information}[children_amount]
    hotels_feature.Select children age                                    ${booking_information}[children_1_index]    ${booking_information}[children_1_age]
    hotels_feature.Select children age                                    ${booking_information}[children_2_index]    ${booking_information}[children_2_age]
    hotels_page.Click search button
    hotels_search_result_page.Check if search result page display
    hotels_search_result_page.Select hotel by index from search result    ${booking_information}[hotel_index]
    common_web.Switch to new tab
    hotels_item_page.Check if hotels item display
    hotels_item_page.Book room by index                                   ${booking_information}[room_index]
    booking_page.Check if booking page display
    booking_page.Select gender as male
    booking_feature.Input contact information
    ...    ${account}[first_name]
    ...    ${account}[last_name]
    ...    ${account}[email]
    ...    ${account}[country_name]
    ...    ${account}[phone]
    ...    ${account}[country_name]
    booking_page.Click confirm booking button
    booking_page.Wait until confirm loading is complete
    payment_page.Check if payment page display
    payment_page.Select credit card as payment method
    payment_feature.Input credit card information
    ...    ${credit_card_information}[card_num]
    ...    ${credit_card_information}[card_holder_name]
    ...    ${credit_card_information}[card_exp]
    ...    ${credit_card_information}[card_cvv]
    payment_page.Click pay now button to confirm payment
    payment_feature.Wait until payment loading is complete
    payment_success_page.Check if success page display
