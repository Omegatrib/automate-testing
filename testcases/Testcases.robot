*** Settings ***
Library         SeleniumLibrary
Resource        ../keywords/CommonKeywords.robot
Variables       ../resources/config/config.yaml    
Suite Setup        Open Browser    ${baseUrl}    chrome   
Suite Teardown     Close Browser

*** Variables ***
${BOOK_TITLES1}
${BOOK_TITLES2}
${BOOK_TITLES3}
${BOOK_TITLES4}
${BOOK_TITLES5}

*** Test Cases ***
close popup
    CommonKeywords.Wait until element is ready then click element    xpath=//*[@id="top"]/main/div[2]/div[1]/a

click menu cartoon
    CommonKeywords.Wait until element is ready then click element    xpath=//*[@id="top"]/main/div[1]/div[2]/div[2]/div[2]/nav/div/ul/li[3]
    CommonKeywords.Wait until element is ready then click element    xpath=/html/body/main/div[3]/div/small/small/div/div[1]/button

Get Book Titles  
    ${BOOK_TITLES1} =    Get Text    xpath=/html/body/main/div[1]/div[3]/div[1]/div[6]/div[2]/div[1]/div/div[2]/a[1]/h5
    ${BOOK_TITLES2} =    Get Text    xpath=/html/body/main/div[1]/div[3]/div[1]/div[6]/div[2]/div[2]/div/div[2]/a[1]/h5
    ${BOOK_TITLES3} =    Get Text    xpath=/html/body/main/div[1]/div[3]/div[1]/div[6]/div[2]/div[3]/div/div[2]/a[1]/h5
    ${BOOK_TITLES4} =    Get Text    xpath=/html/body/main/div[1]/div[3]/div[1]/div[6]/div[2]/div[4]/div/div[2]/a[1]/h5
    ${BOOK_TITLES5} =    Get Text    xpath=/html/body/main/div[1]/div[3]/div[1]/div[6]/div[2]/div[5]/div/div[2]/a[1]/h5           

Press the “Add to Cart” button for all books in row one
    CommonKeywords.Wait until element is ready then click element    xpath=/html/body/main/div[1]/div[3]/div[1]/div[6]/div[2]/div[1]/div/div[3]/div[2]/form/button
    CommonKeywords.Wait until element is ready then click element    xpath=/html/body/main/div[1]/div[3]/div[1]/div[6]/div[2]/div[2]/div/div[3]/div[2]/form/button
    CommonKeywords.Wait until element is ready then click element    xpath=/html/body/main/div[1]/div[3]/div[1]/div[6]/div[2]/div[3]/div/div[3]/div[2]/form/button
    CommonKeywords.Wait until element is ready then click element    xpath=/html/body/main/div[1]/div[3]/div[1]/div[6]/div[2]/div[4]/div/div[3]/div[2]/form/button
    CommonKeywords.Wait until element is ready then click element    xpath=/html/body/main/div[1]/div[3]/div[1]/div[6]/div[2]/div[5]/div/div[3]/div[2]/form/button

Press the “Cart/Basket” button
    CommonKeywords.Wait until element is ready then click element    xpath=/html/body/main/div[1]/div[1]/div/div/div[2]/div/div[4]/ul/li[2]/div

   
Verify the names of all books in the Cart  
    
    Page Should Contain    ${BOOK_TITLES1}
    Page Should Contain    ${BOOK_TITLES2}
    Page Should Contain    ${BOOK_TITLES3}
    Page Should Contain    ${BOOK_TITLES4}
    Page Should Contain    ${BOOK_TITLES5}
    
delete item1 in Cart
    CommonKeywords.Wait until element is ready then click element    xpath=/html/body/main/div[1]/div[3]/div[1]/div/div/div[2]/div[2]/div[5]

Confirm product item1 deletion
    CommonKeywords.Wait until element is ready then click element    xpath=/html/body/div/div/div[3]/button[1]

delete item2 in Cart
    CommonKeywords.Wait until element is ready then click element    xpath=/html/body/main/div[1]/div[3]/div[1]/div/div/div[2]/div[2]/div[5]

confirm product item2 deletion
    CommonKeywords.Wait until element is ready then click element    xpath=/html/body/div/div/div[3]/button[1]

delete item3 in Cart
    CommonKeywords.Wait until element is ready then click element    xpath=/html/body/main/div[1]/div[3]/div[1]/div/div/div[2]/div[2]/div[5]

confirm product item3 deletion
    CommonKeywords.Wait until element is ready then click element    xpath=/html/body/div/div/div[3]/button[1]

delete item4 in Cart
    CommonKeywords.Wait until element is ready then click element    xpath=/html/body/main/div[1]/div[3]/div[1]/div/div/div[2]/div[2]/div[5]

confirm product item4 deletion
    CommonKeywords.Wait until element is ready then click element    xpath=/html/body/div/div/div[3]/button[1]

delete item5 in Cart
    CommonKeywords.Wait until element is ready then click element    xpath=/html/body/main/div[1]/div[3]/div[1]/div/div/div[2]/div[2]/div[5]

confirm product item5 deletion
    CommonKeywords.Wait until element is ready then click element    xpath=/html/body/div/div/div[3]/button[1]

Verify badge on cart that there are 0 books remaining
    CommonKeywords.Wait until page contains element then verify text    xpath=/html/body/main/div[1]/div[1]/div/div/div[2]/div[1]/div[4]/ul/li[2]/div/a/div    0




    

    
    
    
    