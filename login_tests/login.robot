*** Settings ***
Resource    resource.robot
Suite Teardown    Close Browser

*** Test Cases ***
Login With Correct Credentials Leads To Welcome Page
    # Open Browser
    # Open new page
    # Login page should be visible
    Open Browser To Login Page
    # Type username in userfield
    Input Username    ${VALID USER}
    # Type password 
    Input Secret    ${VALID PASSWORD}
    # Submit credentials
    Submit Credentials
    # Welcome page should be visible
    Welcome Page Should Be Open