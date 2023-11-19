*** Variables ***
${BROWSER} =          chrome

${URL_HOME_PAGE} =      http://seleniumdemo.com/
${MAIN_SITE_LOADED_CONFIRMATION_LOCATOR} =      xpath=//span[@class='header-tagline ']

${INVALID_LOGIN_CREDENTIALS_PATH} =     C:\\Users\\kamil\\PycharmProjects\\Robot-Framework-DDT-Demo\\Data\\login.csv

${MY_ACCOUNT_BUTTON_LOCATOR} =      xpath=//li[@id='menu-item-22']/a[@class='nav__link']
${MY_ACCOUNT_LOADED_CONFIRMATION_LOCATOR} =     xpath=//div/h1[contains(text(), 'My account')]

${LOGIN_ERROR_LOCATOR} =
${LOGIN_EMAIL_LOCATOR} =    xpath=//input[@name='username']
${USER_EMAIL}
${LOGIN_PASSWORD_LOCATOR} =     xpath=//input[@name='password']
${USER_PASSWORD}
${SIGN_IN_BUTTON_LOCATOR} =     name=login
${LOG_OUT_BUTTON_LOCATOR}
