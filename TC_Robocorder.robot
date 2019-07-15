*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${BROWSER}    chrome
${SLEEP}    5

*** Test Cases ***
Facebook - Log In or Sign Up test
    Open Browser    https://www.facebook.com/    ${BROWSER}
    Input Text    //input[@name="email"]    testing
    Input Text    //input[@name="pass"]    ***
    #Click Element    //div[@class="_45ks"]
    Input Text    //input[@name="firstname"]    testin
    Input Text    //input[@name="lastname"]    testin
    Click Element    //button[@name="websubmit"]
    Click Element    //input[@name="sex"]
    Click Element    xpath=(//input[@name="sex"])[2]
    Input Text    //input[@name="reg_email__"]    55
    Input Text    //input[@name="reg_passwd__"]    ***
    Click Element    //button[@name="websubmit"]

    Close Browser