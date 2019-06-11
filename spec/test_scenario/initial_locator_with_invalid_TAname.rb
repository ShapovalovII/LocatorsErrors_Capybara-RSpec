require 'spec_helper'

feature 'Verification of information output the locators errors' do
  scenario 'Initial locator with invalid TA name' do
    visit 'https://accounts.google.com'

    find(:xpath, ta('InitialLocator:Not_!_Valid', "//span[@class='RveJvd snByac']")).click

    end
  end