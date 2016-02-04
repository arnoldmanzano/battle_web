require 'spec_helper'

feature 'View hit points' do
  scenario 'see player 2 hit points' do
    visit('/')
    fill_in 'player_1_name', with: 'Ina'
    fill_in 'player_2_name', with: 'Jonny'
    click_button 'Submit'
    expect(page).to have_content('Jonny: 60hp')
  end
end
