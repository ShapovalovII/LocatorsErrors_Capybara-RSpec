require 'spec_helper'

feature 'Verification of information output the locators errors' do
  scenario 'Smart locator is in the database, but taken from another page' do
    visit 'https://accounts.google.com'

    # This locator is made on another page
    withTALocator = ta('Translate:Rus1')
    expError = "Element 'Translate:Rus1' was not found in database. Please provide a selector to find and initialize element."

    checkErrorMessageTA(withTALocator, expError)
  end
end