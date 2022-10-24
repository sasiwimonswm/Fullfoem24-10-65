*** Settings ***
Resource     resource.robot

*** Test Cases ***
Open Browser to Apply of the Thai Chamber of Commerce online application website
    Open Browser to Apply

Select the course that is open for admission have an application but choose to apply for a new course
    Select the course that is open for admission
    Check applicant information Thai course1

Select the course that is open for admission press the check the application button in landingpage
    Press the check the application button in landingpage
    Check applicant information Thai course2

Edit application update menu
    Application update menu step1
    Application update menu step2
    Application update menu step3
    Application update menu step4
    Application update menu step5

Edit selected faculty menu
    Change faculty branch and scholarship

Edit document menu
    Delete and upload document

Payment history menu
    See detailed and process payment
    See detailed payment history

Payment menu
    Select payment method
    See detailed payment

# Print document menu
#     Print and download document