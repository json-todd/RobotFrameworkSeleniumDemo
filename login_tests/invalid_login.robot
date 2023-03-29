*** Settings ***
Resource    resource.robot
Test Template    Login With Invalid Credentials Leads To Error Page


*** Test Cases ***
    # test template                username        password
Valid Username Invalid Password    ${VALID USER}    invalid_password
Valid Username Empty Password      ${VALID USER}    ${EMPTY}
    # Open Browser And Visit Login Page
    # Login Page Should Be Visible
    # Fill Invalid usernmae
    # Fill Invalid password
    # Click submit button & form submit
    # Error login page Should Be Visible

    # user name    password
    #   Valid        Invalid
    #   Valid        EMPTY
    #   Invalid      Valid
    #   EMPTY        Valid    
    #   EMPTY        EMPTY

*** Keywords ***
# Define test template
Login With Invalid Credentials Leads To Error Page
    [Documentation]    Aggregate input username and secret into one keywords for data-driven template
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Secret    ${password}
    Error Page Should Be Open

Error Page Should Be Open
    Location Should Be    ${ERROR URL}
    Title Should Be    Error Page
