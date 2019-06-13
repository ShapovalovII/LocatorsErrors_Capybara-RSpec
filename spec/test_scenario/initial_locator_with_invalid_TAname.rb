require 'spec_helper'


feature 'Verification of information output the locators errors.' do
  scenario 'Initial locator with invalid TA name' do
    visit 'https://accounts.google.com'

    withTALocator = ta('ta-Name', "//span[@class='RveJvd snByac']")
    expError = 'TrueAutomation locator ta-Name contains unsupported characters. Please make sure to use only letters, numbers, colon and underscore symbols in locator names.'

    checkErrorMessageTA(withTALocator, expError)
  end
end