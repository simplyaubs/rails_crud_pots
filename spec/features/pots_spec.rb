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

  scenario 'User can update a pot from list' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add a pot'
    fill_in 'Size', with: 'Large'
    fill_in 'Color', with: 'Orange'
    click_on 'Add pot'
    expect(page).to have_content 'Large'
    expect(page).to have_content 'Orange'
    click_on 'Large'
    expect(page).to have_content 'Large'
    expect(page).to have_content 'Orange'
    click_on 'Edit'
    fill_in 'Size', with: 'Small'
    fill_in 'Color', with: 'Blue'
    click_on 'Update pot'
    expect(page).to have_content 'Small'
    expect(page).to have_content 'Blue'
    expect(page).to_not have_content 'Large'
    expect(page).to_not have_content 'Orange'
  end
end