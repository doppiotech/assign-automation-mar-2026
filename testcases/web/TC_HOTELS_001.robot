*** Settings ***
Resource        ${CURDIR}/../../resources/import.robot

Test Setup           common_web.Open gother website and login with email    ${default_account}[email]    ${default_account}[password]
Test Teardown        common_web.Web teardown

*** Test Cases ***
TC_HOTELS_001 - Verify Hotel Booking with Credit Card Payment
    [Tags]    Feature:Hotels
    header_bar.Click hotels tab on header bar
    hotels_feature.Search destination by typing                           ${TC_HOTELS_001}[destination]
    hotels_page.Click check in date section
    common_feature.Find today date on calendar and select today date
    common_feature.Select period from selected date to target days        ${TC_HOTELS_001}[days_to_book]
    hotels_page.Click guests and rooms section
    hotels_feature.Adjust rooms amount to                                 ${TC_HOTELS_001}[rooms_amount]
    hotels_feature.Adjust adults amount to                                ${TC_HOTELS_001}[adults_amount]
    hotels_feature.Adjust children amount and select age                  ${TC_HOTELS_001}[children_amount]
    hotels_feature.Select children age                                    ${TC_HOTELS_001}[children_1_index]    ${TC_HOTELS_001}[children_1_age]
    hotels_feature.Select children age                                    ${TC_HOTELS_001}[children_2_index]    ${TC_HOTELS_001}[children_2_age]
    hotels_page.Click search button
    hotels_search_result_page.Check if search result page display
    hotels_search_result_page.Select hotel by index from search result           ${TC_HOTELS_001}[hotel_index]
    common_web.Switch tab
    hotels_item_page.Check if hotels item display
    hotels_item_page.Book room by index                                   ${TC_HOTELS_001}[room_index]
    booking_page.Check if booking display
    booking_page.Select gender as male
    booking_feature.Input contact information    ${default_account}[first_name]
    ...    ${default_account}[last_name]
    ...    ${default_account}[email]
    ...    ${default_account}[country_name]
    ...    ${default_account}[phone]
    ...    ${default_account}[country_name]
    booking_page.Click confirm booking button
    booking_page.Wait until confirm loading is complete
    payment_page.Check if payment page display
    payment_page.Select credit card as payment method
    payment_feature.Input credit card information                        ${default_credit_card_information}[card_num]
    ...    ${default_credit_card_information}[card_holder_name]
    ...    ${default_credit_card_information}[card_exp]
    ...    ${default_credit_card_information}[card_cvv]
    payment_page.Click pay now button to confirm payment
    payment_feature.Wait until payment loading is complete
    payment_success_page.Check if success page display
