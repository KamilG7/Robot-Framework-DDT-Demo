*** Settings ***
Resource                ../resources/DataManager.robot
*** Variables ***
${BROWSER} =          chrome

${URL_HOME_PAGE} =      http://seleniumdemo.com/
${MAIN_SITE_LOADED_CONFIRMATION_LOCATOR} =      xpath=//span[@class='header-tagline ']

${INVALID_LOGIN_CREDENTIALS_PATH} =     C:\\Users\\kamil\\PycharmProjects\\Robot-Framework-DDT-Demo\\Data\\login.csv
${INVALID_REGISTRATION_DATA_PATH} =     C:\\Users\\kamil\\PycharmProjects\\Robot-Framework-DDT-Demo\\Data\\registration.csv
${ADDRESS_DATA_PATH} =                  C:\\Users\\kamil\\PycharmProjects\\Robot-Framework-DDT-Demo\\Data\\address.csv

${MY_ACCOUNT_BUTTON_LOCATOR} =      xpath=//li[@id='menu-item-22']/a[@class='nav__link']
${MY_ACCOUNT_LOADED_CONFIRMATION_LOCATOR} =     xpath=//div/h1[contains(text(), 'My account')]

${LOGIN_ERROR_LOCATOR} =    xpath=//ul[@class='woocommerce-error']/li
${LOGIN_EMAIL_LOCATOR} =    xpath=//input[@name='username']
${USER_EMAIL} =     okmejl@gmail.com
${LOGIN_PASSWORD_LOCATOR} =     xpath=//input[@name='password']
${USER_PASSWORD} =    someWh4tStron%$#67815
${SIGN_IN_BUTTON_LOCATOR} =     name=login
${LOG_OUT_BUTTON_LOCATOR} =     xpath=//a[contains(text(), 'Logout')]
${REGISTRATION_EMAIL_LOCATOR} =  xpath=//input[@type='email']
${REGISTRATION_PASSWORD_LOCATOR} =    xpath=//input[@autocomplete='new-password']
${REGISTRATION_BUTTON_LOCATOR} =    name=register
${REGISTRATION_ERROR_LOCATOR} =    xpath=//ul[@role='alert']/li

${ADDRESSES_TAB_LOCATOR} =          xpath=//a[contains(text(), 'Addresses')]
${ADDRESSES_TAB_CONFIRMATION_LOCATOR} =     xpath=//header/h3[contains(text(), 'Shipping address')]
${ADDRESSES_EDIT_TAB_LOCATOR} =             xpath=//header/h3[contains(text(), 'Shipping address')]/following-sibling::*
${ADDRESSES_EDIT_CONFIRMATION_LOCATOR} =        //h3[contains(text(), 'Shipping address')]
${ADDRESS_COUNTRY_COMBO_LOCATOR} =    xpath=//input[@role='combobox']
${ADDRESS_COUNTRY_LOCATOR} =            xpath=//span[@role='combobox']
${ADDRESS_LAST_NAME_LOCATOR} =      xpath=//input[@id='shipping_last_name']
${ADDRESS_FIRST_NAME_LOCATOR} =     xpath=//input[@id='shipping_first_name']
${ADDRESS_STREET_LOCATOR} =    xpath=//input[@name='shipping_address_1']
${ADDRESS_ZIP_CODE_LOCATOR} =       xpath=//input[@id='shipping_postcode']
${ADDRESS_TOWN_LOCATOR} =       xpath=//input[@id='shipping_city']
${ADDRESS_SAVE_BUTTON_LOCATOR} =        xpath=//button[@name='save_address']
${ADDRES_CHANGED_MESSAGE_LOCATOR} =         xpath=//div[@class='woocommerce-message']
${ADDRESS_CHANGED_MESSAGE} =                Address changed successfully
${ADDRESS_COUNTRY_LIST_INDEX} =    //li[@tabindex='-1']

