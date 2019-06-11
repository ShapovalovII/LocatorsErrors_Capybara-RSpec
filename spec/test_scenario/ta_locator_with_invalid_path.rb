require 'spec_helper'

feature 'Verification of information output the locators errors' do
  scenario 'TA locator with invalid xpath' do
    visit 'https://accounts.google.com'

    # Missing two slashes "//"
    find(:xpath, ta('TAname_Valid:Invalid_Xpath', "span[@class='RveJvd snByac']")).click

  end

  scenario 'TA locator with invalid css Selector' do
    visit 'https://accounts.google.com'

    # Missing dot "."
    find(:css, ta('TAname_Valid:Invalid_cssSelector', ".RveJvd snByac")).click

  end

  scenario 'TA locator with invalid id' do
    visit 'https://accounts.google.com'

    # The extra two slashes "//"
    find(:id, ta('TAname_Valid:Invalid_Id', "//identifierId")).click

  end

  scenario 'TA locator with invalid link text' do
    visit 'https://accounts.google.com'

    # The extra two slashes "//"
    click_link(ta('TAname_Valid:Invalid_LinkText', "//Справка"))

  end
end