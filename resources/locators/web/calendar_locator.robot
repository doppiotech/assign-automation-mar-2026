*** Variables ***
${calendar.locator.btn_check_in_date}         css=button[type="button"][title="open-search"]:has-text("${translation.btn_check_in_date}")
${calendar.locator.check_in_month_year}              css=div.date-text-left
${calendar.locator.check_in_day}         css=span:text-is("***Day***") >> nth=0
${calendar.locator.check_out_month_year}              css=div.date-text-right
${calendar.locator.check_out_day}         css=span:text-is("***Day***") >> nth=1
${calendar.locator.btn_next_month}      css=button[title="next-one-month"]