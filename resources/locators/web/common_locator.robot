*** Variables ***
&{calendar_modal}
...            lbl_month_left=css=.date-text-left p
...            lbl_month_right=css=.date-text-right p
...            btn_back_one_month=css=[title="back-one-month"]
...            btn_next_one_month=css=[title="next-one-month"]
...            btn_today_date=css=.rdrDay.rdrDayToday
...            btn_available_date_by_index=css=.rdrMonth:has-text("***month***") .rdrDay:nth-child(***index*** of :not(.rdrDayDisabled):not(.invisible))
...            btn_available_date_by_date=css=.rdrMonth:has-text("***month***") .rdrDay:not(.rdrDayDisabled):not(.invisible) span:text-is("***day***")
