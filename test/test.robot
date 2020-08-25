*** Settings ***
Library             SeleniumLibrary
Resource            ../resource/keywords.robot
Test Setup          Navigate To Kitabisa Page
Test Teardown       Close Browser

*** Variables ***
${URL}              https://kitabisa.com/
${BROWSER}          chrome
${TIMEOUT}          20
${FULLNAME}         <fullname>
${EMAIL}            <email>

*** Test Cases ***
QA Test - Automate Kitabisa.com
    Donate A Campaign