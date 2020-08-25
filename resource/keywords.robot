*** Keywords ***
Donate A Campaign
    Navigate To Campaign Page
    Donate Now
    Choose Transfer BCA As Payment Method
    Input Data
    Navigate To Payment Page
    Back To Campaign Page

Navigate To Kitabisa Page
    Open Browser                    ${URL}      ${BROWSER}
    Maximize Browser Window  
    Wait Until Page Contains        Ingin Menggalang Dana?          timeout=${TIMEOUT}

Navigate To Campaign Page
    Click Element                   //*[contains(text(), 'Donasi')]
    Wait Until Page Contains        Bantu siapa hari ini?           timeout=${TIMEOUT}
    Click Element                   //*[@class='style__ListContent-sc-1sl4ulh-4 eSaNeQ']
    Wait Until Page Contains        DONASI SEKARANG                 timeout=${TIMEOUT}

Donate Now
    Click Element                   id=campaign-detail_button_donasi-sekarang
    Wait Until Page Contains        Masukan Nominal Donasi      timeout=${TIMEOUT}
    Click Element                   //*[@class='style__DonationAmountOption-rpc2ym-1 cGSjOX']

Choose Transfer BCA As Payment Method
    Wait Until Page Contains                Transfer Bank           timeout=${TIMEOUT}
    Scroll Element Into View                //*[contains(text(), 'Transfer BCA')]
    Click Element                           //*[contains(text(), 'Transfer BCA')]
    Wait Until Page Contains Element        id=contribute_button_lanjutkan-pembayaran           timeout=${TIMEOUT}

Input Data
    Input Text          name=fullname       ${FULLNAME}
    Input Text          name=username       ${EMAIL}

Navigate To Payment Page
    Click Element                   id=contribute_button_lanjutkan-pembayaran
    Wait Until Page Contains        Instruksi Pembayaran            timeout=${TIMEOUT}

Back To Campaign Page    
    Scroll Element Into View        //*[@class='style__ButtonWrapper-nurl6-0 gnKlkT']
    Click Element                   //*[@class='style__ButtonWrapper-nurl6-0 gnKlkT']