require 'spec_helper'

feature 'Verification of information output the locators errors.' do
  scenario 'Initial locator does not exist on used page' do
    visit 'https://accounts.google.com'

    # Used locator taken from another page
    withTALocator = ta('Google:test:div', "//div[@class='sl-more tlid-open-source-language-list']")
    expError = "Element was not found on the page. Element 'Google:test:div' with such locator is not on this page and could not be detected by TrueAutomation."

    checkErrorMessageTA(withTALocator, expError)
  end
end