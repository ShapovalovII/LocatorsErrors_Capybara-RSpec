require 'spec_helper'

feature 'Verification of information output the locators errors.' do
  scenario 'Smart locator does not exist in the database' do
    visit 'https://accounts.google.com'

    # The locator name does not exist in the database
    withTALocator = ta('SmartLocator:Not_in_the_database')
    expError = "There is no such TA Locator in the objects repository. Element 'SmartLocator:Not_in_the_database' was not found in the objects repository of 'TestTA' project."

    checkErrorMessageTA(withTALocator, expError)

  end
end