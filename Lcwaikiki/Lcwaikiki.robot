*** Settings ***
Library    SeleniumLibrary
Library    FakerLibrary
Library    DebugLibrary


*** Variables ***
${HOMEPAGE}    https://www.lcwaikiki.com/tr-TR/TR
${BROWSER}    chrome
${SEARCH_Name}    Erkek pantolon
${SEARCH}    id="search_input"
*** Test Cases ***
Should be able
    open browser    ${HOMEPAGE}   ${BROWSER}
    maximize browser window
    wait until page contains element    xpath=//*[@id="header__container"]/header/div[1]/div/div[1]/a/img
    sleep    2s
    click element    ${SEARCH}
    input text    ${SEARCH}     ${SEARCH_Name}
    click element    xpath=//*[@id="header__container"]/header/div[1]/div/div[2]/div/div/div[1]/div[2]/button
    wait until page contains    "erkek pantolon"
    click element    xpath=//*[@id="root"]/div/div[2]/div[2]/div[5]/div/div/div[2]/div[1]/a/div[1]/img
    wait until page contains    LCW VISION 750 Slim Fit Erkek Jean Pantolon
    click element    xpath=//*[@id="option-size"]/a[2]
    click element    xpath=//*[@id="option-height"]/a
    click element    xpath=//*[@id="pd_add_to_cart"]
    click element    id="spanCart"
    wait until page contains    Sepetim (1 Ürün)
    click element    xpath=/html/body/div[3]/div[2]/div[1]/div[2]/a
    close browser
#case koşmak için;
#Terminale robot -d reports Lcwaikiki.robot komutunu giriyoruz