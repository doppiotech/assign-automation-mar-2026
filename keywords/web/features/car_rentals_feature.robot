*** Keywords ***
Search pickup location by typing
    [Arguments]    ${search_text}
    car_rentals_page.Click pickup location search field
    car_rentals_page.Input pickup location on search field        ${search_text}
    car_rentals_page.Select pickup location from suggestion list after search with input    ${search_text}

Select pickup time
    [Arguments]    ${time}
    car_rentals_page.Click pickup time
    common_web.Select time        ${time}

Select dropoff time
    [Arguments]    ${time}
    car_rentals_page.Click droppoff time
    common_web.Select time        ${time}
