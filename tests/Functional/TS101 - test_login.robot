*** Settings ***
Library  SeleniumLibrary
Resource  ../../resource/pages/login_page.robot
Resource  ../../resource/common_resources.robot

Suite Setup  Load Environment
Test Setup  Open Application
Test Teardown  Close Application

*** Test Cases ***
TC_F_001 - Login
    Close Image Popup
    Login With Mobile Number

TC_F_003 - Wrong OTP
    Close Image Popup
    Login With Mobile Number
    Page Should Contain  Incorrect OTP

TC_F_004 - OTP Expired
    Close Image Popup
    Login With Mobile Number
    sleep  10s