*** Settings ***
Library    SeleniumLibrary

Resource   ../../locators/family_member_locators.robot

*** Keywords ***

Open Manage Family Member Section

    Wait Until Element Is Visible    ${account_button}    10s
    Click Element    ${account_button}

    Wait Until Element Is Visible    ${manage_family_member_button}    10s
    Click Element    ${manage_family_member_button}

Click Add New Profile

    Wait Until Element Is Visible    ${add_new_profile_button}    10s
    Click Element    ${add_new_profile_button}

Enter First Name
    [Arguments]    ${firstname}

    Click Element    ${f_name}
    Input Text    ${f_name}    ${firstname}

Enter Last Name
    [Arguments]    ${lastname}

    Click Element    ${l_name}
    Input Text    ${l_name}    ${lastname}

Enter Date Of Birth
    [Arguments]    ${dob}
    Click Element    ${Date_of_birth}
    Input Text    ${Date_of_birth}    ${dob}

Select Female Gender

    Click Element    ${gender_female}

Select Relation As Sister

    Wait Until Element Is Enabled        ${relation_button}    10s
    Click Element    ${relation_button}

    Wait Until Element Is Enabled        ${relation_choose}    10s
    Click Element    ${relation_choose}

Click Save Button

    Wait Until Element Is Enabled      ${save_button}    10s
    Click Element    ${save_button}

Click Confirmation Button

    Wait Until Element Is Enabled      ${confirmation_button}    10s
    Click Element    ${confirmation_button}

Click OK Button
    Wait Until Element Is Enabled      ${ok_button}    10s
    Click Element    ${ok_button}
