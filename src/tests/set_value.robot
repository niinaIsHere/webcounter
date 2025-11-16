*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
When counter value set to 10 it increases by 10
    Go To  ${HOME_URL}
    Input Text  input_value  10
    Click Button  aseta
    Page Should Contain  nappia painettu 10 kertaa
