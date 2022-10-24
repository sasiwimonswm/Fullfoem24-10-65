*** Settings ***
Library             SeleniumLibrary

*** Variables ***
#${SERVER}           localhost:7272    
${HOMEPAGE}         http://utcc-uat-admission.utcc.ac.th/
${BROWSER}          chrome
${DELAY}            1
${sibling}          3
${1SEC}             1
${2SEC}             2
${3SEC}             3
${4SEC}             4
${4SEC}             5
${ID_CARD}          8157724075411
${IMGURL}           D:/robotfullform241065/sample.png


*** Keywords ***
Open Browser to Apply
    Open Browser    ${HOMEPAGE}    ${BROWSER}
    Maximize Browser Window

Select the course that is open for admission
    sleep   ${1SEC}
    Wait Until Element Is Visible     xpath://*[@id="home"]/div/div/div/div/div/div/div/div/div/a[1]
    Sleep   ${1SEC}
    Click Element                      xpath://*[@id="home"]/div/div/div/div/div/div/div/div/div/a[1]
    Sleep   ${1SEC}
    Execute Javascript    window.scrollTo(0,800)
    sleep   ${1SEC}
    Wait Until Element Is Visible     xpath://*[@id="courses"]/div/div/div/div[2]/div[1]/div/div[3]/div/button
    Sleep   ${1SEC}
    Click Element                    xpath://*[@id="courses"]/div/div/div/div[2]/div[1]/div/div[3]/div/button

Check applicant information Thai course1
    sleep   ${4SEC}
    Input Text                      xpath://*[@id="root"]/div/div/div[1]/div/div[5]/input               ${ID_CARD}
    sleep   ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[1]/div/div[5]/div/input
    sleep   ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[1]/div/div[5]/div/div/div[2]/div/div/div/div/div[2]/div[1]/div/div[4]/div[3]/span
    sleep   ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[1]/div/button
    sleep   ${1SEC}
    Wait Until Element Is Visible     xpath://button[contains(text(),'ปรับปรุงใบสมัคร')]
    sleep   ${1SEC}
    Click Element                   xpath://button[contains(text(),'ปรับปรุงใบสมัคร')]
    sleep   ${1SEC}
    [Teardown]    close

Press the check the application button in landingpage
    Open Browser    ${HOMEPAGE}    ${BROWSER}
    Maximize Browser Window
    sleep   ${4SEC}
    Click Element                   xpath://*[@id="home"]/div/div/div/div/div/div/div/div/div/a[2]
    Input Text                      xpath://*[@id="root"]/div/div/div[1]/div/div[5]/input              ${ID_CARD}
    sleep   ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[1]/div/div[5]/div/input
    sleep   ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[1]/div/div[5]/div/div/div[2]/div/div/div/div/div[2]/div[1]/div/div[4]/div[3]/span
    sleep   ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[1]/div/button
    sleep   ${1SEC}

Check applicant information Thai course2
    sleep   ${1SEC}
    Input Text                      xpath://*[@id="root"]/div/div/div[1]/div/div[5]/input               ${ID_CARD}
    sleep   ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[1]/div/div[5]/div/input
    sleep   ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[1]/div/div[5]/div/div/div[2]/div/div/div/div/div[2]/div[1]/div/div[4]/div[3]/span
    sleep   ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[1]/div/button
    sleep   ${1SEC}

Application update menu step1
    # กดปุ่มปรับปรุงใบสมัคร
    sleep   ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[3]/div[1]/div/a[2]/div/div/span
    sleep    ${1SEC}
    Click Element                   xpath://button[contains(text(),'แก้ไข')]
    sleep    ${1SEC}
    Wait Until Element Is Visible     xpath://*[@id="flexRadioDefault2"]
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="flexRadioDefault2"]
    sleep    ${1SEC}
    Execute Javascript    window.scrollTo(0,800)
    sleep   ${1SEC}
    Input Text                      xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[3]/div/div[7]/div[2]/form/input       1212312121201
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="pwd_issue_dt"]
    sleep    ${1SEC}
    Wait Until Element Is Visible     xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[3]/div/div[8]/div[1]/div[2]/div[2]/div/div/div/div/div[1]/div/div/span[2]
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[3]/div/div[8]/div[1]/div[2]/div[2]/div/div/div/div/div[1]/div/div/span[2]
    sleep    ${1SEC}
    Wait Until Element Is Visible     xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[3]/div/div[8]/div[1]/div[2]/div[2]/div/div/div/div/div[2]/div[3]/div[1]/div[1]/span
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[3]/div/div[8]/div[1]/div[2]/div[2]/div/div/div/div/div[2]/div[3]/div[1]/div[1]/span
    sleep    ${1SEC}
    Wait Until Element Is Visible     xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[3]/div/div[8]/div[1]/div[2]/div[2]/div/div/div/div/div[2]/div[1]/div/div[4]/div[2]/span
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[3]/div/div[8]/div[1]/div[2]/div[2]/div/div/div/div/div[2]/div[1]/div/div[4]/div[2]/span
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="pwd_expire_dt"]
    sleep    ${1SEC}
    Wait Until Element Is Visible     xpath:xpath://*[@id="flexRadioDefault1"]
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="flexRadioDefault1"]
    sleep    ${2SEC}
    #กดปุ่มบันทึก
    Click Element                   xpath://button[contains(text(),'บันทึก')]
    sleep    ${4SEC}
    #กดปุ่มถัดไป
    Click Element                   xpath://button[contains(text(),'ถัดไป')]
    sleep    ${2SEC}

Application update menu step2
    sleep    ${3SEC}
    Click Element                   xpath://button[contains(text(),'แก้ไข')]
    sleep    ${1SEC}
    #กดเลือกจบต่างประเทศ
    Click Element                   xpath://*[@id="graduatedAbroad"]
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="flexRadioDefault1"]
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[3]/div/div[2]/div[1]/div/div/div[1]/input[1]
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="eduQualification-item-0"]
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[3]/div/div[2]/div[2]/div/div/div[1]/input[1]
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="schoolProvList-item-5"]
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[3]/div/div[3]/div[1]/div/div/div[1]/input[1]
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="schoolNameList-item-3"]
    sleep    ${1SEC}
    Input Text                      xpath://*[@id="GPA"]            3.98
    sleep    ${1SEC}
    #กดปุ่มบันทึก
    Click Element                   xpath://button[contains(text(),'บันทึก')]
    sleep    ${4SEC}
    #กดปุ่มถัดไป
    Click Element                   xpath://button[contains(text(),'ถัดไป')]
    sleep    ${2SEC}

Application update menu step3
    sleep    ${2SEC}
    Execute Javascript    window.scrollTo(0,1500)
    sleep    ${3SEC}
    Click Element                   xpath://button[contains(text(),'แก้ไข')]
    sleep    ${2SEC}
    Execute Javascript    window.scrollTo(0,100)
    sleep    ${1SEC}
    Wait Until Element Is Visible     xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[3]/div/div[1]/div[2]/div[1]/div/div[2]/div[1]/input[1]
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[3]/div/div[1]/div[2]/div[1]/div/div[2]/div[1]/input[1]
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="prefix0-item-0"]
    sleep    ${1SEC}
    Input Text                      xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[3]/div/div[1]/div[2]/div[2]/div[1]/form/input             สมศักดิ์
    sleep    ${1SEC}
    Input Text                      xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[3]/div/div[1]/div[2]/div[2]/div[2]/form/input             เเข็งแกร่ง
    sleep    ${1SEC}
    Input Text                      xpath://*[@id="MOBILE0"]         0825875885
    sleep    ${1SEC}
    Execute Javascript    window.scrollTo(0,300)
    sleep    ${1SEC}
    Wait Until Element Is Visible     xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[3]/div/div[2]/div[2]/div[1]/div/div[2]/div[1]/input[1]
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[3]/div/div[2]/div[2]/div[1]/div/div[2]/div[1]/input[1]
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="prefix1-item-1"]
    sleep    ${1SEC}
    Input Text                      xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[3]/div/div[2]/div[2]/div[2]/div[1]/form/input             สมศรี
    sleep    ${1SEC}
    Input Text                      xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[3]/div/div[2]/div[2]/div[2]/div[2]/form/input             แข็งแกร่ง
    sleep    ${1SEC}
    Input Text                      xpath://*[@id="MOBILE1"]          08584867847
    sleep    ${1SEC}
    Execute Javascript    window.scrollTo(0,600)
    sleep    ${1SEC}
    Wait Until Element Is Visible     xpath://*[@id="STD24001"]
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="STD24001"]
    sleep    ${1SEC}
    Execute Javascript    window.scrollTo(0,1000)
    sleep    ${1SEC}
    Wait Until Element Is Visible     xpath://*[@id="STD25001"]
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="STD25001"]
    sleep    ${1SEC}
    #กดปุ่มบันทึก
    Click Element                   xpath://button[contains(text(),'บันทึก')]
    sleep    ${4SEC}
    #กดปุ่มถัดไป
    Click Element                   xpath://button[contains(text(),'ถัดไป')]
    sleep    ${2SEC}

Application update menu step4
    sleep    ${2SEC}
    Execute Javascript    window.scrollTo(0,1500)
    sleep    ${3SEC}
    Click Element                   xpath://button[contains(text(),'แก้ไข')]
    sleep    ${2SEC}
    Execute Javascript    window.scrollTo(0,300)
    sleep    ${1SEC}
    Wait Until Element Is Visible     xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[4]/div/div[2]/div[2]/div[1]/div/form/input
    sleep    ${1SEC}
    Input Text                      xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[4]/div/div[2]/div[2]/div[1]/div/form/input          125/2 หมู่16
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[4]/div/div[2]/div[2]/div[2]/div[1]/div[2]/div[1]/input[1]
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="prov1-item-5"]
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[4]/div/div[2]/div[2]/div[2]/div[2]/form/div/div[1]/input[1]
    sleep    ${1SEC}                
    Click Element                   xpath://*[@id="district1-item-9"]
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[4]/div/div[2]/div[2]/div[3]/div[1]/form/div/div[1]/input[1]
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="subdistrict1-item-0"]
    sleep    ${1SEC}
    Execute Javascript    window.scrollTo(0,700)
    sleep    ${1SEC}
    Wait Until Element Is Visible     xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[4]/div/div[3]/div[2]/div[1]/div/form/input
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[4]/div/div[3]/div[2]/div[1]/div/form/input
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="address12"]
    sleep    ${1SEC}
    Execute Javascript    window.scrollTo(0,1000)
    sleep    ${1SEC}
    Wait Until Element Is Visible     xpath://button[contains(text(),'บันทึก')]
    sleep    ${1SEC}
    #กดปุ่มบันทึก
    Click Element                   xpath://button[contains(text(),'บันทึก')]
    sleep    ${4SEC}
    #กดปุ่มถัดไป
    Click Element                   xpath://button[contains(text(),'ถัดไป')]
    sleep    ${2SEC}

Application update menu step5
    sleep    ${2SEC}
    Input Text                      xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[3]/div/div[1]/div/div[1]/div[1]/form/input         โรคภูมิแพ้
    sleep    ${1SEC}                
    Click Element                   xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[3]/div/div[1]/div/div[1]/div[2]/form/div/div[1]/input[1]      
    sleep    ${1SEC
    Click Element                   xpath://*[@id="blood-item-3"]          
    sleep    ${1SEC}
    #ข้อมูลธนาคาร
    Click Element                   xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[3]/div/div[2]/div/div[1]/div[1]/div[2]/div[1]/input[1]          
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="bank-item-6"]          
    sleep    ${1SEC}
    Input Text                      xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[3]/div/div[2]/div/div[1]/div[2]/form/input         โลตัสขอนแก่น
    sleep    ${1SEC}
    Input Text                      xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div[2]/div/div/div[3]/div/div[2]/div/div[2]/div[2]/input        1212312121
    sleep    ${1SEC}
    #กดปุ่มบันทึก
    Click Element                   xpath://button[contains(text(),'บันทึก')]
    sleep    ${4SEC}
    #กดปุ่มถัดไป
    Click Element                   xpath://button[contains(text(),'ถัดไป')]
    sleep    ${2SEC}

Change faculty branch and scholarship
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[3]/div[1]/div/a[3]/div/div/span          
    sleep    ${1SEC}
    Click Element                   xpath://button[contains(text(),'แก้ไข')]          
    sleep    ${1SEC}
    Execute Javascript    window.scrollTo(0,400)
    sleep    ${1SEC}
    Wait Until Element Is Visible     xpath://*[@id="flexRadioDefault1"]
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="flexRadioDefault1"]          
    sleep    ${1SEC}
    Execute Javascript    window.scrollTo(0,800)
    sleep    ${1SEC}
    Wait Until Element Is Visible     xpath://*[@id="scholarship"]
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="scholarship"]          
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div/div[1]/div[1]/div[3]/div/div[5]/div[7]/div/div[1]/div[2]/div[2]/div/div[1]/input[1]
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="scholarshipList-item-0"]
    sleep    ${1SEC}
    #กดปุ่มบันทึก
    Click Element                   xpath://button[contains(text(),'บันทึก')]
    sleep    ${4SEC}

Delete and upload document  
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div/div/div[3]/div/div/div[1]/div/div[1]/div[2]/div
    sleep    ${2SEC}
    #กดปุ่มบันลบ
    Click Element                   xpath://button[contains(text(),'ลบ')]
    sleep    ${4SEC}
    Choose File                   xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div/div/div[3]/div/div/div[1]/div/div[1]
    sleep    ${1SEC}
    #กดปุ่มบันทึก
    Click Element                   xpath://button[contains(text(),'บันทึก')]
    sleep    ${4SEC}

See detailed and process payment
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[3]/div[1]/div/a[5]/div
    sleep    ${1SEC}
    Execute Javascript    window.scrollTo(0,500)
    sleep    ${1SEC}
    Wait Until Element Is Visible     xpath://button[contains(text(),'ดำเนินการชำระเงิน')]
    #กดปุ่มดำเนินการชำระเงิน
    Click Element                   xpath://button[contains(text(),'ดำเนินการชำระเงิน')]
    sleep    ${4SEC}

Select payment method
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[3]/div[1]/div/a[6]/div/div
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div/div[3]/div[2]/div[3]
    sleep    ${1SEC}
    Execute Javascript    window.scrollTo(0,500)
    sleep    ${1SEC}
    Wait Until Element Is Visible     xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div/div[3]/div[5]/div[1]/div
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[3]/div[3]/div/div/div[3]/div[5]/div[1]/div
    sleep    ${1SEC}
    #กดปุ่มดำเนินการชำระเงิน
    Click Element                   xpath://button[contains(text(),'ดำเนินการชำระเงิน')]
    sleep    ${4SEC}
    Click Element                   xpath://button[contains(text(),'ยก้เลิก')]
    sleep    ${2SEC}

See detailed payment history
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[3]/div[1]/div/a[5]/div
    sleep    ${1SEC}

See detailed payment
    sleep    ${1SEC}
    Click Element                   xpath://*[@id="root"]/div/div/div[3]/div[1]/div/a[6]/div/div
    sleep    ${1SEC}
# Print and download document
    # sleep    ${1SEC}
    # Click Element                   xpath:
    # sleep    ${1SEC}
    # Click Element                   xpath:
    # sleep    ${1SEC}


    