require 'spec_helper'

feature 'Verification of information output the locators errors.' do
  scenario 'Initial locator does not exist on used page' do
    visit 'https://accounts.google.com'

    # Used locator taken from another page
    withTALocator = ta('Practike:Frame:iframe', "#courses-iframe")
    expError = "Element was not found on the page. Element 'Practike:Frame:iframe' with such locator is not on this page and could not be detected by TrueAutomation."

    checkErrorMessageTA(withTALocator, expError)
  end
end