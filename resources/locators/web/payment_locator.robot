*** Variables ***
&{payment_element}
...            payment_section=css=[class$="title-payment-channel"]
...            btn_pay_now=css=#confirmBooking2
...            lbl_payment_loading=css=#confirmBooking2 [src*="loading"]
...            lbl_payment_page_loading=css=.Loading
&{payment_method}
...            rdo_credit_card_method=css=#CREDIT_RADIO
&{credit_card_information}
...            txt_creadit_card_num=css=#card-number-creditcard input
...            txt_creadit_card_name=css=#card_name_creditcard
...            txt_creadit_card_exp=css=#expire_of_creditcard_creditcard
...            txt_creadit_card_cvv=css=#securityCode_creditcard