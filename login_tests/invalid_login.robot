*** Settings ***
Resource    resource.robot
Test Template    Fill Login Credentials


*** Test Cases ***
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
Fill Login Credentials
    [Documentation]    Aggregate input username and secret into one keywords for data-driven template
    [Arguments]    ${username}    ${password}
    Input Username    ${username}
    Input Secret    ${password}