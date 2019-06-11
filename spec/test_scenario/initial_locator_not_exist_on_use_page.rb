require 'spec_helper'

feature 'Verification of information output the locators errors' do
  scenario 'Initial locator does not exist on used page' do
    visit 'https://accounts.google.com'

    # Used locator taken from another page
    find(:css, ta('Zachet:Zachet_Div_Initial', ".logo.top-menu")).click

  end
end