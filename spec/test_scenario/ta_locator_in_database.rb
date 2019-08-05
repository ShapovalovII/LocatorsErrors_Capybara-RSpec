require 'spec_helper'

feature 'Verification of information output the locators errors' do
  scenario 'Smart locator is in the database, but taken from another page' do
    visit 'https://accounts.google.com'

    # This locator is made on another page
    withTALocator = ta('Translate:Rus1')
    expError = "Element was not found on the page. Element 'Translate:Rus1' with such locator is not on this page and could not be detected by TrueAutomation."

    checkErrorMessageTA(withTALocator, expError)
  end
end