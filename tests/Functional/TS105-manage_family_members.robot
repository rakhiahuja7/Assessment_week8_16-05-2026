*** Settings ***
Library    SeleniumLibrary

Resource   ../../resource/pages/login_page.robot
Resource   ../../resource/pages/family_member_page.robot
Resource   ../../resource/common_resources.robot


Suite Setup    Run Keywords
...    Load Environment
...    AND  Open Application
...    AND    Close Image Popup
...    AND    Login With Mobile Number
Suite Teardown     Close Application

*** Test Cases ***

TC_FM_001 - Add Family Member Successfully
    Open Manage Family Member Section
    Click Add New Profile
    Enter First Name    Taara
    Enter Last Name    Sharma
    Enter Date Of Birth    12/08/2001
    Select Female Gender
    Select Relation As Sister
    Click Save Button
    Click Confirmation Button
    Click OK Button
    Sleep    5s


TC_FM_002 - Add Family Member Without First Name
    Click Add New Profile
    Enter Last Name    Sharma
    Enter Date Of Birth    12/08/2001
    Select Female Gender
    Select Relation As Sister
    Click Element    ${cancel_button}


TC_FM_003 - Add Family Member Without DOB
    Click Add New Profile
    Enter First Name    Riya
    Enter Last Name    Sharma
    Select Female Gender
    Select Relation As Sister
    Click Element    ${cancel_button}


TC_FM_004 - Add Family Member Without Relation
    Click Add New Profile
    Enter First Name    Riya
    Enter Last Name    Sharma
    Enter Date Of Birth    12/08/2001
    Select Female Gender
    Click Element    ${cancel_button}


TC_FM_005 - Verify Add New Profile Popup Opens
    Page Should Contain    Add New Profile

TC_FM_006 - Update Family Member Details
    Click Element    ${edit_profile}
    Select Relation As Sister
    Click Save Button
    Click OK Button
    Sleep    5s