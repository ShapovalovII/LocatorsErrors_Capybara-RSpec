require 'spec_helper'

feature 'Verification of information output the locators errors' do
  scenario 'Smart locator does not exist in the database' do
    visit 'https://accounts.google.com'

    # The locator name does not exist in the database
    withTALocator = ta('SmartLocator:Not_in_the_database')
    expError = "Element 'Translate:Rus1' was not found in database. Please provide a selector to find and initialize element."

    checkErrorMessageTA(withTALocator, expError)

  end
end