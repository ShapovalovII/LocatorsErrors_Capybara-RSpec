require 'spec_helper'

feature 'Verification of information output the locators errors.' do
  scenario 'TA locator with invalid xpath' do
    visit 'https://accounts.google.com'

    # Missing two slashes "//"
    withTALocator = ta('taName', "span[@class='RveJvd snByac']")
    expError = "Unable to locate element { using: 'css selector', selector: 'span[@class='RveJvd snByac']' }"

    checkErrorMessageTA(withTALocator, expError)
  end

  scenario 'TA locator with invalid css Selector' do
    visit 'https://accounts.google.com'

    # Missing dot "."
    withTALocator = ta('taName', ".RveJvd snBya")
    expError = "Unable to locate element { using: 'css selector', selector: '.RveJvd snBya' }"

    checkErrorMessageTA(withTALocator, expError)
  end

  scenario 'TA locator with invalid id' do
    visit 'https://accounts.google.com'

    # The extra two slashes "//"
    withTALocator = ta('taName', "//identifierId")
    expError = "Unable to locate element { using: 'css selector', selector: '//identifierId' }"

    checkErrorMessageTA(withTALocator, expError)
  end

  scenario 'TA locator with invalid link text' do
    visit 'https://accounts.google.com'

    # The extra two slashes "//"
    withTALocator = ta('taName', "//Справка")
    expError = "Unable to locate element { using: 'css selector', selector: '//Справка' }"

    checkErrorMessageTA(withTALocator, expError)
  end
end