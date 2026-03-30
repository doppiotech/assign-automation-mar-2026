*** Keywords ***
Search and select hotels
    [Arguments]        ${search_text}
    hotels_main_page.Click hotels tab 
    common_web.Verify hotels page
    hotels_main_page.Click destination or accommodation name search field
    Input your destination or accommodation name search field        ${search_text}
    Select destination or accommodation name from suggestion list        ${search_text}