***Keywords***
Generate Random Email
    [Arguments]    ${domain_email}    ${length_random}
    ${random_str}=    String.Generate random string    ${length_random}    [NUMBERS]
    ${selected_domain}=    BuiltIn.Evaluate    random.choice(${domain_email})    modules=random
    ${new_email}=     BuiltIn.Set variable    sun_${random_str}@${selected_domain}
    RETURN    ${new_email}