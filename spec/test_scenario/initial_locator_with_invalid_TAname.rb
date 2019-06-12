require 'spec_helper'


feature 'Verification of information output the locators errors' do
  scenario 'Initial locator with invalid TA name' do
    visit 'https://accounts.google.com'

    withTALocator = ta('ta!Name', "//span[@class='RveJvd snByac']");
    expError = 'invalid selector: An invalid or illegal selector was specified'

    checkErrorMessageTA(withTALocator, expError)
  end
end