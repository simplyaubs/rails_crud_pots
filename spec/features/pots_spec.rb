require 'spec_helper'

feature 'CRUD pots' do

  scenario 'User can create a list of pots' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a pot'
    fill_in 'Size', with: 'Large'
    fill_in 'Color', with: 'Orange'
    click_on 'Add pot'
    expect(page).to have_content 'Large'
    expect(page).to have_content 'Orange'
  end

end