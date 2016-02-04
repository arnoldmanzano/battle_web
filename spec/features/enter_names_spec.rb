require 'spec_helper'

# visit "http://localhost:4567/"

feature 'Player adds their name' do
	scenario 'with valid name' do
		visit('/')
		fill_in 'player_1_name', with: 'Ina'
		fill_in 'player_2_name', with: 'Johnny'
		click_button 'Submit'
		expect(page).to have_content('Ina vs. Johnny')
	end
end
