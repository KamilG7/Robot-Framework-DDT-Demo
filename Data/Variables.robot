*** Settings ***
Resource                ../resources/DataManager.robot
*** Variables ***
${BROWSER} =          chrome

${URL_HOME_PAGE} =      http://seleniumdemo.com/
${MAIN_SITE_LOADED_CONFIRMATION_LOCATOR} =      xpath=//span[@class='header-tagline ']

${INVALID_LOGIN_CREDENTIALS_PATH} =     C:\\Users\\kamil\\PycharmProjects\\Robot-Framework-DDT-Demo\\Data\\login.csv
${INVALID_REGISTRATION_DATA_PATH} =     C:\\Users\\kamil\\PycharmProjects\\Robot-Framework-DDT-Demo\\Data\\registration.csv

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
