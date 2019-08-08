require 'spec_helper'


feature 'Verification of information output the locators errors.' do
  scenario 'Initial locator with invalid TA name' do
    visit 'https://accounts.google.com'

    withTALocator = ta('ta-Name', "//span[@class='RveJvd snByac']")
    expError = 'Such TrueAutomation locator name ta-Name can not be used. Locator name may consist of several parts separated by a colon. English letters, numbers and single underscores that are not at the beginning or at the end may be used.'

    checkErrorMessageTA(withTALocator, expError)
  end
end